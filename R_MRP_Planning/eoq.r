eoq = function(co,cp){
buildMRP(reqb,prog0,dataa)
fillDispReqN(reqb,disp,prog,reqn,dataa)
lprog = length(na.omit(prog))
lreqb = length(reqb)
bard = sum(reqb[2:length(reqb)])/(length(reqb) - 1)
print(bard)
Qeoq = adjProg(sqrt(2*co*bard/cp))
print(Qeoq)
	while ((lprog + 2) <= lreqb){
		print(Qeoq)
		print(prog)
		if (reqn[lprog + 2] > 0) {
		  prog[lprog + 2] <<- Qeoq
		}else{
		  prog[lprog + 2] <<- 0
		}
		lprog = length(na.omit(prog))
		fillDispReqN(reqb,disp,prog,reqn,dataa)
	}
}