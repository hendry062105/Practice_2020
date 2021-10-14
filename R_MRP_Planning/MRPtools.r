disp <<- (0:(length(reqb)-1))*NA
is0 <<- (0:(length(reqb)-1))*NA
prog <<- (0:(length(reqb)-1))*NA
fracd <<- (0:(length(reqb)-1))*NA
reqn <<- (0:(length(reqb)-1))*NA
libord <<- (0:(length(reqb)-1))*NA
setwd("~/Dropbox/R_MRP_Planning")
source("buildMRP.r")
source("fillDispReqN.r")
source("tableMRP.r")
source("adjProg.r")
source("minStock.r")
source("eoq.r")
source("eoq1.r")
source("poq.r")
source("ctm.r")
source("cum.r")
source("Qeoq.r")
source("add_uneven.r")
source("totalcost.r")