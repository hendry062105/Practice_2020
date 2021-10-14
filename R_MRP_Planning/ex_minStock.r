library(DataCombine)
setwd("~/Dropbox/R_MRP_Planning")

reqb <<- c(NA,0,41,87,58,80,62,78,132,108)
prog0 <<- c(NA,0)#,7,87,58,88,93,93,93,93)
dataa <<- matrix(c(49,15,1,0.07,1,0,100))
source("MRPtools.r")

buildMRP(reqb,prog0,dataa)
fillDispReqN(reqb,disp,prog,reqn,dataa)

minStock()

#PRINT TABLE
dataa
tableMRP(reqb,disp,prog,reqn,dataa)

rownames(tablea)=c("Sem","ReqB","Disp","Is","Prog","FracD","ReqN","LibOrd")
