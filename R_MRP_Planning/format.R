#TEST
library(DataCombine)
source("C:/Users/Hendry/Dropbox/R_MRP_Planning/MRPtools.R")

reqb <<- c(NA,0,116,108,122,113,117,113,115,107,132,142,120)
prog0 <<- c(NA,0)#,7,87,58,88,93,93,93,93)
dataa <<- matrix(c(0,0,1,0.00,1,0,100000))

minStock()

mean(disp[2:length(disp)])*0.5+sum(prog[2:length(prog)]!=0)*120