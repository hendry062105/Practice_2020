eoq1=function(co,cp){
  buildMRP(reqb,prog0,dataa)
  fillDispReqN(reqb,disp,prog,reqn,dataa)
  Qeoq1 = Qeoq(co,cp)
  dataa["Mult",1] <<- Qeoq1
  dataa["Max",1] <<- Qeoq1
  bard=sum(reqb[2:length(reqb)])/(length(reqb) - 1)
  print(Qeoq)
  minStock()
  totalcost(co,cp)
}