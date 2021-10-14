limits_interval_3_v2=function(){
  idle=c()
  t=t0
  vec=c(t0,t0,t0)
  starts=c(vec[1])
  vec[1]=vec[1]+df$M1[1]
  ends=c(vec[1])
  starts=c(starts,vec[1])
  vec[2]=vec[1]+df$M2[1]
  ends=c(ends,vec[2])
  starts=c(starts,vec[2])
  vec[3]=vec[2]+df$M3[1]
  ends=c(ends,vec[3])
  
  for (i in 2:length(trabajos)){
    starts=c(starts,vec[1])
    vec[1]=vec[1]+df$M1[i]
    ends=c(ends,vec[1])
    if (vec[1]>vec[2]){
      starts=c(starts,vec[1])
      idle=c(idle,vec[1]-vec[2])
      vec[2]=vec[1]+df$M2[i]
      ends=c(ends,vec[2])
    }else{
      starts=c(starts,vec[2])
      vec[2]=vec[2]+df$M2[i]
      ends=c(ends,vec[2])
    }
    if (vec[2]>vec[3]){
      starts=c(starts,vec[2])
      idle=c(idle,vec[2]-vec[3])
      vec[3]=vec[2]+df$M3[i]
      ends=c(ends,vec[3])
    }else{
      starts=c(starts,vec[3])
      vec[3]=vec[3]+df$M3[i]
      ends=c(ends,vec[3])
    }
  }
  starts<<-starts
  ends<<-ends
  idle<<-idle
}