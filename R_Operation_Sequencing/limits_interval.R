limits_interval=function(){
idle=c()
t=t0

starts=c(t)
t=t+df$M1[1]
ends=c(t)

starts=c(starts,t)
ends=c(ends,t+df$M2[1])

for (i in 1:(length(trabajos)-1)){
  if (df$M2[i]>df$M1[i+1]){
    t=t+df$M2[i]
    t=t-df$M1[i+1]
    starts=c(starts,t)
    t=t+df$M1[i+1]
    ends=c(ends,t)
    starts=c(starts,t)
    ends=c(ends,t+df$M2[i+1])
    idle=c(idle,df$M2[i]-df$M1[i+1])
  }else{
    t=t#-df$M1[i+1]
    starts=c(starts,t)
    t=t+df$M1[i+1]
    ends=c(ends,t)
    starts=c(starts,t)
    ends=c(ends,t+df$M2[i+1])
    idle=c(idle,-df$M2[i]+df$M1[i+1])
  }
}
starts<<-starts
ends<<-ends
idle<<-idle
}