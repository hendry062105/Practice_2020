cum  =  function(co,cp){
buildMRP(reqb,prog0,dataa)
fillDispReqN(reqb,disp,prog,reqn,dataa)
m = 1
summ <<-  matrix(c(0),30,9)
lprog = length(na.omit(prog))
lreqb = length(reqb)
bard = sum(reqb[2:length(reqb)])/(length(reqb) - 1)
Qeoq = adjProg(sqrt(2*co*bard/cp))
Teoq = round(Qeoq/bard)

	while ((lprog + 2)<= lreqb){
		if (reqn[lprog + 2]>0) {
			costp = 0
			k = 1
			f = FALSE
			dif0 = 0
			dif1 = 0
			cu1 = 0
			cu0 = 10000000000000
			cu = 100000000000000
			while (((cu1 <= cu0))*((length(na.omit(prog)) + 1) < length(reqb))|f){		
				dif0 = abs(costp - co)
				if ((k != 1)*((length(na.omit(prog)) + 2) <= length(reqb))) prog[(lprog + 3):(lprog + 3 + k - 1 - 1)] = ((lprog + 3):(lprog + 3 + k - 1 - 1))*0
				if (TRUE) prog[lprog + 2] = adjProg(sum(c(reqn[lprog + 2],reqb[lprog + 3:lreqb])[1:k]))
				prog <<-  prog
				fillDispReqN(reqb,disp,prog,reqn,dataa)
				print("###########################################")
				print(sem)
				print(reqb)
				print(disp)
				print(prog)
				print(reqn)
				m = m + 1
				summ[m,1] <<-  lprog + 1
				summ[m,2] <<-  k
				summ[m,3] <<-  sum(c(reqn[lprog + 2],reqb[lprog + 3:lreqb])[1:k])
				summ[m,4] <<-  ceiling(sum(c(reqn[lprog + 2],reqb[lprog + 3:lreqb])[1:k])/(1 - dataa["FracD",]))
				summ[m,5] <<-  prog[lprog + 2]
				summ[m,6] <<-  ceiling(prog[lprog + 2]/(1 - dataa["FracD",1])) - prog[lprog + 2]
				summ[m,7] <<-  sum(disp[(lprog + 2):(lprog + 1 + k)])
				summ[m,8] <<-  sum(disp[(lprog + 2):(lprog + 1 + k)])*cp
				summ[m,9] <<-  co
				colnames(summ) <<-  c("Sem","Cobertura","ReqN","ReqN + Def","Prog","Def", "Inv","Cp", "Co" )
				print(summ)
				if ((prog[lprog + 2]!= 0)& (lprog + 2) == length(disp)) {
  				prog <<-  prog
  				dataa
  				tableMRP(reqb,disp,prog,reqn,dataa)		
  				return()
				}		
  				cu0 = cu
  				costp = sum(disp[(lprog + 2):(lprog + 1 + k)])*cp
  				print(costp)
  				print(adjProg(sum(c(reqn[lprog + 2],reqb[lprog + 3:lreqb])[1:k])))
  				cu = (costp + co)/(adjProg(sum(c(reqn[lprog + 2],reqb[lprog + 3:lreqb])[1:k])))
  				print("/////////////////////cu///////////")
  				print(cu)
  				cu1 = cu			
  				dif1 = abs(costp - co)
				if ((cu1 >= cu0)|f) {
					if ((cu1 >= cu0) & (!f)) {
  					k = k - 1
  					f = TRUE
  					print(" -  -  - ajustando -  -  -  a la menor diferecia")
  					next
					}
					print(prog[(lprog + k + 2):(length(reqb))])
					print(((lprog + k + 2):(length(reqb)))*NA)
					if (((length(na.omit(prog)) + 1 + 0)<= (length(reqb) + 0))&(1)){
						prog[(lprog + k + 2):(length(reqb))] = ((lprog + k + 2):(length(reqb)))*NA
						lprog = length(na.omit(prog))
					}
					print(" -  -  -  -  - prog -  -  -  -  - ")
					print(prog)
					break
				}
				k  =  k + 1
			}
		}else{
  		prog[lprog + 2] = 0
		}
		lprog = length(na.omit(prog))
		fillDispReqN(reqb,disp,prog,reqn,dataa)
	}
	prog <<-  prog
dataa
tableMRP(reqb,disp,prog,reqn,dataa)	
totalcost(co,cp)
}