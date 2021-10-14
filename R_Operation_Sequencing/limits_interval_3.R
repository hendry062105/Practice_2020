limits_interval_3=function(){
  idle=c()
  t=t0
  l=c()
  u=c()
  v1=0
  for (i in 1:(length(trabajos)-0)){
   l=c(l,v1)  
   u=c(u,v1+df$M1[i])
   l=c(l, v1+df$M1[i])
   u=c(u,v1+df$M1[i]+df$M2[i])
   l=c(l,v1+df$M1[i]+df$M2[i])
   u=c(u,v1+df$M1[i]+df$M2[i]+df$M3[i])
   
   if (i==length(trabajos)){break}
   
   for (v2 in u[(length(u)-2):length(u)]+c(0,-df$M1[i+1],-df$M1[i+1]-df$M2[i+1])){
    bool=u[(length(u)-2):length(u)]<=c(v2,v2+df$M1[i+1],v2+df$M1[i+1]+df$M2[i+1])
    if (prod(bool)==1){v1=v2;idle=c(idle,-u[(length(u)-2):length(u)]+c(v2,v2+df$M1[i+1],v2+df$M1[i+1]+df$M2[i+1]));break}
   }
  }
  starts=l
  ends=u
  starts<<-starts
  ends<<-ends
  idle<<-idle
}