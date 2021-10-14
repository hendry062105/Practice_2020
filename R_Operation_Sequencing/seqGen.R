seqGen=function(criteria,method2){
  Inicio=(1:length(Sec))*0
  Fin=(1:length(Sec))*0
  Holgura=(1:length(Sec))*0
  RC=(1:length(Sec))*0
  Flujo=(1:length(Sec))*0
  Retraso=(1:length(Sec))*0
  tab<-data.frame(Sec,Flleg,Tproc,Fent,Inicio,Fin,Holgura,RC,Flujo,Retraso)
  if ((criteria=="Holgura" | criteria=="RC")&(method2)){
    for(j in (1:(length(Sec)-1))){
      tab[(j:length(Sec)),"Holgura"]=tab[(j:length(Sec)),"Fent"]-tab[(j:length(Sec)),"Flleg"]-Fhoy-tab[(j:length(Sec)),"Tproc"]
      tab[(j:length(Sec)),"RC"]=(tab[(j:length(Sec)),"Fent"]-tab[(j:length(Sec)),"Flleg"]-Fhoy)/tab[(j:length(Sec)),"Tproc"]
      print(tab[(j:length(Sec)),])
      tab[(j:length(Sec)),]=tab[(j:length(Sec)),][order(tab[(j:length(Sec)),criteria]),]
      tab[1,"Fin"]=tab[1,"Flleg"]+tab[1,"Tproc"]
      for (i in 1:(length(Sec)-1)){
        tab[i+1,"Inicio"]=max(c(tab[i+1,"Flleg"],tab[i,"Fin"]))
        tab[i,"Fin"]=tab[i+1,"Inicio"]
        tab[i+1,"Fin"]= tab[i,"Fin"]+tab[i+1,"Tproc"]
      }
      Fhoy=tab[j,"Fin"]
      print(Fhoy)
    }
  }else{
    tab[,"Holgura"]=tab[,"Fent"]-tab[,"Flleg"]-0-tab[,"Tproc"]
    tab[,"RC"]=(tab[,"Fent"]-tab[,"Flleg"]-0)/tab[,"Tproc"]
    tab=tab[order(tab[,criteria]),]
    tab[1,"Fin"]=tab[1,"Flleg"]+tab[1,"Tproc"]
    for (i in 1:(length(Sec)-1)){
      tab[i+1,"Inicio"]=max(c(tab[i+1,"Flleg"],tab[i,"Fin"]))
      tab[i,"Fin"]=tab[i+1,"Inicio"]
      tab[i+1,"Fin"]= tab[i,"Fin"]+tab[i+1,"Tproc"]
    }
  }
  tab[,"Flujo"]=tab[,"Fin"]-tab[,"Flleg"]
  tab[,"Retraso"]=(tab[,"Fin"]-tab[,"Fent"])*(tab[,"Fin"]-tab[,"Fent"]>=0)
  print(tab)
  sum_lt=sum(tab[,"Flujo"])
  mean_lt=sum(tab[,"Flujo"])/length(tab[,"Flujo"])
  "-------------------"
  sum_tard=sum(tab[,"Retraso"])
  mean_tard=sum(tab[,"Retraso"])/length(tab[,"Retraso"])
  "-------------------"
  num_task_overdue=sum(tab[,"Retraso"]>0)
  util=sum(tab$Tproc)/sum(tab$Flujo)
  task_in_system=util^-1
  df.summary=data.frame(sum_lt, mean_lt,sum_tard,mean_tard,num_task_overdue,util,task_in_system)
  print(t(df.summary))
  tab<<-tab
}