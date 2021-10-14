source("/home/hendry/Dropbox/R_Operation_Sequencing/seqGen.R")
source("/home/hendry/Dropbox/R_Operation_Sequencing/moore.R")
source("/home/hendry/Dropbox/R_Operation_Sequencing/gantt_one_machine.R")
Fhoy=0
t0=Fhoy
Sec=c("1","2","3","4","5","6","7","8")
Flleg=c(0,0,0,0,0,0,0,0)
Tproc=c(8,2,7,1,6,5,4,3)
Fent=c(12,9,8,11,+10,10,+8,6)
seqGen(criteria="Flleg",method2=0)

#moore()
gantt_one_machine()


  


