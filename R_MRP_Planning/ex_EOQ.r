library(DataCombine)
setwd("~/Dropbox/R_MRP_Planning")

reqb <<- c(NA,116,44,122,90,66,40,50,72,142,120)
prog0 <<- c(NA,0)#,7,87,58,88,93,93,93,93)
dataa <<- matrix(c(120,0,1,0.00,1,0,1000000000))
source("MRPtools.r")

buildMRP(reqb,prog0,dataa)
fillDispReqN(reqb,disp,prog,reqn,dataa)

eoq1(52,0.94)

#PRINT TABLE
dataa
tableMRP(reqb,disp,prog,reqn,dataa)

rownames(tablea)=c("Sem","ReqB","Disp","Is","Prog","FracD","ReqN","LibOrd")


