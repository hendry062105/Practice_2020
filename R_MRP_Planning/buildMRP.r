buildMRP=function(reqb,prog0,dataa){
	library(DataCombine)
  v_NA <<- (0:(length(reqb) - 1))*NA
  disp <<- v_NA
  is0 <<- v_NA
  prog <<- v_NA
  fracd <<- v_NA
  reqn <<- v_NA
  rownames(dataa) <<- c("Disp0","Is","Lt","FracD","Mult","Min","Max")
  fillDispReqN(reqb,disp,prog,reqn,dataa)
  libord <<- (0:(length(reqb) - 1))*NA
	sem <<- 0:(length(reqb) - 1)
	disp[1] <<- dataa["Disp0",1]
	prog <<- (1:length(prog0))*NA
	# print("prueba loca");print(prog)
	prog[1:length(prog0)]<<-prog0
	print(prog)
}