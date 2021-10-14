totalcost=function(co,cp){
  print("Total cost")
  mean(na.omit(disp[2:length(disp)]))*cp+sum(prog[2:length(prog)]!=0)*co
}