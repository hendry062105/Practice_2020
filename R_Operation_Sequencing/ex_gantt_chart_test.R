source("/home/hendry/Dropbox/R_Operation_Sequencing/gantt_chart.R")
source("/home/hendry/Dropbox/R_Operation_Sequencing/synchronous_man.R")
labels = c("M1","M2","M3")
t0 = 0
starts = c()
ends = c()
D = 150
PAP = 45
ttransf = 10
m = 4;n = 3#m = nro_partes:n = longitud_secuencia
times = c(7,9,3,11,3,11,6,4,6,5,10,9)
maq = c(1,2,3,2,1,2,3,1,3,1,3,2)
parti0 = c(2,2,2,1,1,4,4,4,1)
opj0 = c(1,2,3,1,2,1,2,3,3)
strt0 = c(0,1230,1695,0,3390,1725,0,4785,0)
data.frame(parti0,opj0,strt0)

synchronous_man()
