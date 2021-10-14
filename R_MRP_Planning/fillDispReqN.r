fillDispReqN = function(reqb,disp,prog,reqn,dataa){
	reqn[2] <<- ((reqb[2]-disp[1] + dataa["Is",1])>0)*(reqb[2] - disp[1] + dataa["Is",1])
	i = 1
	for (i in 1:(length(prog))) {
  	disp[i + 1] = (disp[i] - reqb[i + 1] + prog[i + 1])
  	reqn[i + 1] = ((reqb[i + 1] - disp[i + 0]+dataa["Is",1])>0)*(reqb[i + 1]-disp[i + 0] + dataa["Is",1])
	}
	disp <<- disp
	reqn <<- reqn
}