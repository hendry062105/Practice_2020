source("/home/hendry/Dropbox/R_Operation_Sequencing/johnson.R")
source("/home/hendry/Dropbox/R_Operation_Sequencing/gantt_johnson.R")
source("/home/hendry/Dropbox/R_Operation_Sequencing/limits_interval.R")
source("/home/hendry/Dropbox/R_Operation_Sequencing/limits_interval_v2.R")
tasks=c("1","2","3")#as.character(1:3)
M1=c(5,1,9,3,10)
M2=c(2,6,7,8,4)
M1=runif(3)
M2=runif(3)

johnson()
df=data.frame(tasks,M1,M2)
df=df[as.integer(seq0),]

gantt_johnson(t0=0,starts,ends)

