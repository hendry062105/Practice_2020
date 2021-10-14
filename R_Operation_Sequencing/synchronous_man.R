synchronous_man=function(){
  times=matrix(times,m,n,byrow = TRUE)
  colnames(times)=sprintf("MAQ[%s]",seq(1:ncol(times)))
  rownames(times)=sprintf("P[%s]",seq(1:nrow(times)))
  maq=matrix(maq,m,n,byrow=TRUE)
  colnames(maq)=sprintf("SEQ[%s]",seq(1:ncol(maq)))
  rownames(maq)=sprintf("P[%s]",seq(1:nrow(maq)))
  taskcolors=c()
  strt=0
  for (i in 1:length(parti0)) {
    print("##########################################################################")
    parti=parti0[i]
    opj=opj0[i]
    print(data.frame(parti,opj))
    taskcolors=c(taskcolors,rep(rainbow(m*(n+5))[(parti-1)*(n+5)+opj],3))
    print(paste("MAQ",(maq[parti,opj])))
    print(paste("time*D                    ",0+times[parti,opj]*D))
    print(paste("time*ttransf              ",0+times[parti,opj]*ttransf))
    print(paste("time                      ",times[parti,opj]))
    print("******************************")
    strt=strt0[i]#as.numeric(readline("start=?"))
    if (maq[parti,opj]==1){bas=c(1,0,0)}
    if (maq[parti,opj]==2){bas=c(0,1,0)}
    if (maq[parti,opj]==3){bas=c(0,0,1)}
    print(paste("strt + time*D             ",strt+times[parti,opj]*D))
    print(paste("strt + time*D + PAP       ",strt+times[parti,opj]*D+PAP,"*"))
    print(paste("strt + time*ttransf       ",strt+times[parti,opj]*ttransf))
    starts=c(starts,bas*strt)
    ends=c(ends,bas*strt+bas*times[parti,opj]*D+bas*PAP)
    makespan=max(ends)
    gantt_chart(labels,t0,starts,ends,taskcolors)
    print("------------------------------")
    print(paste("makespan",makespan))
  }
}