poq = function(co,cp){
buildMRP(reqb,prog0,dataa)
fillDispReqN(reqb,disp,prog,reqn,dataa)
lprog = length(na.omit(prog))
lreqb = length(reqb)
bard = sum(reqb[2:length(reqb)])/(length(reqb) - 1)
print("----bard----")
print(bard)
Qeoq = adjProg(sqrt(2*co*bard/cp))
Teoq = round(Qeoq/bard)
print("----Teoq----")
print(Teoq)
	while ((lprog + 2) <= lreqb & length(prog)<length(reqb)){
	  fillDispReqN(reqb,disp,prog,reqn,dataa)
		if (reqn[lprog + 2] > 0) {
		  fillDispReqN(reqb,disp,prog,reqn,dataa)
  		prog[lprog + 2] = adjProg(sum(na.omit(c(reqn[lprog + 2],reqb[lprog + 3:lreqb])[1:Teoq])))
  		print(prog)
  		print(c(reqn[lprog + 2],reqb[lprog + 3:lreqb])[1:Teoq])#prog[lprog + 2])
		}else{
  		prog[lprog + 2] = 0
  		print(prog)
		}
		lprog = length(na.omit(prog))
		fillDispReqN(reqb,disp,prog,reqn,dataa)
		print("reqn")
		print(reqn)
	}
	prog<<-prog
  dataa
  tableMRP(reqb,disp,prog,reqn,dataa)
	totalcost(co,cp)
}