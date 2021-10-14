library(DataCombine)
setwd("~/Dropbox/R_MRP_Planning")

reqb <<- c(NA,0,116,108,122,113,117,113,115,107,132,142,120)
prog0 <<- c(NA,0)#,7,87,58,88,93,93,93,93)
dataa <<- matrix(c(0,0,1,0.00,1,0,100000))
source("MRPtools.r")

buildMRP(reqb,prog0,dataa)
fillDispReqN(reqb,disp,prog,reqn,dataa)

cum(120*1,0.5*1)

#PRINT TABLE
dataa
tableMRP(reqb,disp,prog,reqn,dataa)

rownames(tablea)=c("Sem","ReqB","Disp","Is","Prog","FracD","ReqN","LibOrd")


