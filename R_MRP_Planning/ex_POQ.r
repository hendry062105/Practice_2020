library(DataCombine)
setwd("~/Dropbox/R_MRP_Planning")

reqb <<- c(NA,25,12,54,66,80,51,26,40,85)
prog0 <<- c(NA,0,70)#,7,87,58,88,93,93,93,93)
dataa <<- matrix(c(75,0,1,0.05,40,0,1000))
source("MRPtools.r")

buildMRP(reqb,prog0,dataa)
fillDispReqN(reqb,disp,prog,reqn,dataa)

poq(60,0.92)

#PRINT TABLE
dataa
tableMRP(reqb,disp,prog,reqn,dataa)

rownames(tablea)=c("Sem","ReqB","Disp","Is","Prog","FracD","ReqN","LibOrd")