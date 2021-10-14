adjProg = function(Q){
  Q = ceiling(Q/dataa["Mult",]/(1 - dataa["FracD",]))
  Q = floor(Q*dataa["Mult",]*(1  -dataa["FracD",]))
  Q = max(min(Q,floor(dataa["Max",]*(1 - dataa["FracD",]))),floor(dataa["Min",]*(1 - dataa["FracD",])))
  return(Q)
}