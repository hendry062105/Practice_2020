source("/home/hendry/Dropbox/R_Operation_Sequencing/gantt_four_machines.R")
source("/home/hendry/Dropbox/R_Operation_Sequencing/limits_interval_3.R")
source("/home/hendry/Dropbox/R_Operation_Sequencing/limits_interval_4.R")
trabajos = c("1","2","3","4","5")
M1 = c(4+0,9,8,6,5)
M2 = c(5+0,6,2+0,3,4)
M3 = c(8+0,10+0,6+0,7,11)
M4 = c(3+0,12+0,2,2,7)
df = data.frame(trabajos,M1,M2,M3,M4)
df = df[c(2,1,3,4,5),]

gantt_four_machines(t0 = 0)
#data.frame(starts,ends)
