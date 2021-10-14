library(DataCombine)
setwd("~/Dropbox/R_MRP_Planning")

reqb <<- c(NA,1120,196,1105,196,1341,196,886,196,196)
prog0 <<- c(NA,912)#,7,87,58,88,93,93,93,93)
dataa <<- matrix(c(550,0,1,0.04,50,0,100000))
source("MRPtools.r")

buildMRP(reqb,prog0,dataa)
fillDispReqN(reqb,disp,prog,reqn,dataa)

ctm(90*1,0.07*1)

#PRINT TABLE
dataa
tableMRP(reqb,disp,prog,reqn,dataa)

rownames(tablea)=c("Sem","ReqB","Disp","Is","Prog","FracD","ReqN","LibOrd")