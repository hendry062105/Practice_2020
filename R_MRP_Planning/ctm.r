ctm = function(co,cp){
buildMRP(reqb,prog0,dataa)
fillDispReqN(reqb,disp,prog,reqn,dataa)
m = 1
summ <<- matrix(c(0),30,9)
colnames(summ) <<- c("Sem","Cobertura","ReqN","ReqN + Def","Prog","Def", "Inv","Cp", "Co" )
lprog = length(na.omit(prog))
lreqb = length(reqb)
bard = sum(reqb[2:length(reqb)])/(length(reqb) - 1)
print("----bard----")
print(bard)
Qeoq = adjProg(sqrt(2*co*bard/cp))
Teoq = round(Qeoq/bard)
print("----Teoq----")
print(Teoq)
	while ((lprog + 2)<=lreqb){
		if (reqn[lprog + 2]>0) {
			costp = 0
			k = 1
			f = FALSE
			dif0 = 0
			dif1 = 0
			while (((costp <= co)*(length(na.omit(prog)) + 1)<length(reqb))|f){
				dif0 = abs(costp - co)
				if ((k!=1)*((length(na.omit(prog)) + 2)<=length(reqb))) prog[(lprog + 3):(lprog + k + 1)] = ((lprog + 3):(lprog + k + 1))*0
				prog[lprog + 2] = adjProg(sum(c(reqn[lprog + 2],reqb[lprog + 3:lreqb])[1:k]))
				print("k")
				print(k)
				prog <<- prog
				fillDispReqN(reqb,disp,prog,reqn,dataa)
				print("###########################################")
				print(matrix(c(sem,reqb,disp,prog,reqn),5,length(reqb),byrow = TRUE))
				m = m + 1
				summ[m,1] <<- lprog + 1
				summ[m,2] <<- k
				summ[m,3] <<- sum(c(reqn[lprog + 2],reqb[lprog + 3:lreqb])[1:k])
				summ[m,4] <<- ceiling(sum(c(reqn[lprog + 2],reqb[lprog + 3:lreqb])[1:k])/(1 - dataa["FracD",]))
				summ[m,5] <<- prog[lprog + 2]
				summ[m,6] <<- ceiling(prog[lprog + 2]/(1 - dataa["FracD",1])) - prog[lprog + 2]
				summ[m,7] <<- sum(disp[(lprog + 2):(lprog + 1 + k)])
				summ[m,8] <<- sum(disp[(lprog + 2):(lprog + 1 + k)])*cp
				summ[m,9] <<- co
				
				print(summ)
				if ((prog[lprog + 2]!=0)& (lprog + 2)==length(disp)) {
  				prog <<- prog
  				dataa
  				tableMRP(reqb,disp,prog,reqn,dataa)	
  				return()
				}
				costp = sum(disp[(lprog + 2):(lprog + 1 + k)])*cp
				print("---------costp")
				print(costp)
				dif1 = abs(costp-co)
				if ((costp>=co)|f) {
					if ((dif0<dif1) & (!f)) {
  					if (k>1) k = k-1
  					f = TRUE
  					print("---ajustando--- a la menor diferecia")
  					next
					}
					print(prog[(lprog + k + 2):(length(reqb))])
					print(((lprog + k + 2):(length(reqb)))*NA)
					if (((length(na.omit(prog)) + 1)<=(length(reqb)))&(1)){
  					prog[(lprog + k + 2):(length(reqb))] = ((lprog + k + 2):(length(reqb)))*NA
  					lprog = length(na.omit(prog))
					}
					break
				}
				k = k  +  1
			}
		}else{
		prog[lprog + 2] = 0
		}
		lprog = length(na.omit(prog))
		fillDispReqN(reqb,disp,prog,reqn,dataa)
	}
	prog <<- prog
dataa
tableMRP(reqb,disp,prog,reqn,dataa)
totalcost(co,cp)
}