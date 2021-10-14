johnson=function(){
  seq0=NA*(1:length(tasks))
  df=data.frame(tasks,M1,M2)
  u=length(seq0)
  l=1
  while (sum(is.na(seq0))!=0){
    if (min(na.omit(df[,"M1"]))>min(na.omit(df[,"M2"]))){
      imin=which.min(df[,"M2"])
      print("M2")
      print(which(df[,"M2"]==df[imin,"M2"]))
      seq0[u]=tasks[which.min(df[,"M2"])]
     df[imin,"M2"]=NA
     df[imin,"M1"]=NA
      u=u-1
    }else{
      if (min(na.omit(df[,"M1"]))==min(na.omit(df[,"M2"]))){print("Iguales")}
      imin=which.min(df[,"M1"])
      print("M1")
      print(which(df[,"M1"]==df[imin,"M1"]))
      seq0[l]=tasks[which.min(df[,"M1"])]
      df[imin,"M2"]=NA
      df[imin,"M1"]=NA
      l=l+1
    }
    print(df)
    print(seq0)
    seq0<<-seq0
  }
}
