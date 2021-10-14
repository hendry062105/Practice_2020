moore = function(){
  seqGen(criteria = "Fent",method2 = 0)
  while(TRUE){
    j = which(tab$Retraso>0)[1]
    tab$Tproc[1:j]
    imax = which.max(tab$Tproc[1:j])
    imax = rownames(tab[1:j])[imax]
    if (which(rownames(tab) == imax) == length(tab$Sec)) {return()}
    tab = tab[c(which(imax!= rownames(tab)),which(imax == rownames(tab))),]
    tab[,"Holgura"] = tab[,"Fent"]-tab[,"Flleg"]-0-tab[,"Tproc"]
    tab[,"RC"] = (tab[,"Fent"]-tab[,"Flleg"]-0)/tab[,"Tproc"]
    tab$Inicio[1] = tab$Flleg[1]
    tab[1,"Fin"] = tab[1,"Flleg"]+tab[1,"Tproc"]
    for (i in 1:(length(Sec)-1)){
      tab[i+1,"Inicio"] = max(c(tab[i+1,"Flleg"],tab[i,"Fin"]))
      tab[i,"Fin"] = tab[i+1,"Inicio"]
      tab[i+1,"Fin"] =  tab[i,"Fin"]+tab[i+1,"Tproc"]
    }
    tab[,"Flujo"] = tab[,"Fin"]-tab[,"Flleg"]
    tab[,"Retraso"] = (tab[,"Fin"]-tab[,"Fent"])*(tab[,"Fin"]-tab[,"Fent"] >= 0)
    print(tab)
    sum_lt = sum(tab[,"Flujo"])
    mean_lt = sum(tab[,"Flujo"])/length(tab[,"Flujo"])
    "-------------------"
    sum_tard = sum(tab[,"Retraso"])
    mean_tard = sum(tab[,"Retraso"])/length(tab[,"Retraso"])
    "-------------------"
    num_task_overdue = sum(tab[,"Retraso"] > 0)
    util = sum(tab$Tproc)/sum(tab$Flujo)
    task_in_system = util^-1
    df.summary = data.frame(sum_lt, mean_lt,sum_tard,mean_tard,num_task_overdue,util,task_in_system)
    print(t(df.summary))
    tab<<-tab
  }
}