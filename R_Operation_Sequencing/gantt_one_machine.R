gantt_one_machine = function(){
  starts = tab$Inicio
  ends = tab$Fin
  library(plotrix)
  gantt.info<-list(labels = c("tasks"),
                   starts = starts,
                   ends = ends,
                   priorities = c(1,4))
  months <- seq(t0, by = 10, length.out = ends[length(ends)])
  monthslab <- format(months, format = "%b")
  vgridpos <- (months)#,format = Ymd.format)
  vgridlab <- monthslab
  colfunc <- colorRampPalette(c("darkgoldenrod1"))
  timeframe <- c(t0,ends[length(ends)])
  gantt.chart(gantt.info,vgridlab = tab$Fent,#t0:(ends[length(ends)]-5),
              vgridpos = tab$Fent,
              main = "Gantt Chart",
              taskcolors = rainbow(length(Sec)),#c(1,2,3,4,5,6,7,8,"purple")
              border.col = "black")
}