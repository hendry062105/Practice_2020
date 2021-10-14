source("/home/hendry/Dropbox/R_Operation_Sequencing/gantt_three_machines.R")
source("/home/hendry/Dropbox/R_Operation_Sequencing/limits_interval_3.R")
source("/home/hendry/Dropbox/R_Operation_Sequencing/limits_interval_3_v2.R")
trabajos=c("1","2","3","4","5")
M1=c(1,10,17,12,11)
M2=c(13,12,9,17,3)
M3=c(2,18,4,6,16)
df=data.frame(trabajos,M1,M2,M3)
df=df[c(1,5,2,4,3),]

gantt_three_machines(t0=0)
