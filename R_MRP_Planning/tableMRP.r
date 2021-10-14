tableMRP = function(reqb,disp,prog,reqn,dataa){
prog = c(prog)
	sem = 0:(length(reqb)-1)
	is0 <<- ((disp<dataa["Is",1])*disp)+((disp>= dataa["Is",1])*dataa["Is",1])
	disp = (disp>dataa["Is",1])*(disp-dataa["Is",1])
	fracd <<- ceiling(prog/(1-dataa["FracD",1]))-prog
	libord <<- ceiling(prog/(1-dataa["FracD",1]))[(dataa["Lt",1]+1):length(reqb)]
	tablea <<- matrix(,8,length(reqb),byrow = TRUE)
	tablea[1,] = sem
	tablea[2,] = reqb
	tablea[3,] = disp[1:length(reqb)]#na.omit(disp)
	tablea[4,] = is0[1:length(reqb)]#na.omit(is0)
	tablea[5,1:length(reqb)] = prog
	tablea[6,1:length(reqb)] = fracd
	tablea[7,] = reqn[1:length(reqb)]
	tablea[8,1:(length(libord))] = libord
	rownames(tablea) = c("Sem","ReqB","Disp","Is","Prog","FracD","ReqN","LibOrd")
	print("--------------Disp0-------------------")
	print(tablea["Disp",1])
	print("--------------Is0---------------------")
	print(tablea["Is",1])
	print("---------------------------------")
	print(tablea[,2:ncol(tablea)])
}