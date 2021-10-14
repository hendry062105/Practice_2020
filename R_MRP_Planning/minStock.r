minStock=function(){
buildMRP(reqb,prog0,dataa)
fillDispReqN(reqb,disp,prog,reqn,dataa)
lprog <<- length(na.omit(prog))
lreqb <<- length(reqb)
i = 1
differ = 0
temp = 0
prog1 = (0:(length(reqb)-1))*NA
while ((lprog + 2) <= lreqb){
	prog[lprog + 2] = adjProg(reqn[lprog + 2])
	if (differ != 0) prog[lprog + 2] = adjProg(temp + differ)
	differ = 0
	temp = 0
		if ((prog[lprog + 2] < reqn[lprog + 2])&!(is.na(prog[lprog + 2]))) {
  		print("Prog < ReqN")
  		differ = -prog[lprog + 2] + reqn[lprog + 2]
  		j=length(reqb)-match(TRUE,prog[length(reqb):1] != floor(dataa["Max",]*(1-dataa["FracD",])))
  		print(prog)
  		if ((j + 1) <= (dataa["Lt",1] + 1)) {
    		print("**********impossible**********")
    		fillDispReqN(reqb,disp,prog,reqn,dataa)
    		lprog=length(na.omit(prog))
    		next
  		}
  		prog1 = (0:(length(reqb) - 1))*NA
  		prog1[2:length(prog[1:j + 1])]=prog[1:j + 1]
  		temp = prog[j + 1]
  		prog = prog1
  		fillDispReqN(reqb,disp,prog,reqn,dataa)
  		lprog = length(na.omit(prog))
		}
	print(prog)
	fillDispReqN(reqb,disp,prog,reqn,dataa)
	lprog = length(na.omit(prog))
}
prog <<- prog
dataa
tableMRP(reqb,disp,prog,reqn,dataa)
}