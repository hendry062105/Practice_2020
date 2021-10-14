gantt_chart=function(labels,t0,starts,ends,taskcolors){
  df_limits = data.frame(starts,ends)
  library(plotrix)
  gantt.info<-list(labels=labels,#c("M1","M2"),
                   starts=starts,
                   ends=ends)
  months <- seq(t0, by=100, length.out=ends[length(ends)])
  monthslab <- format(months, format="%b")
  vgridpos<-(months)#,format=Ymd.format)
  vgridlab<-monthslab
  colfunc <- colorRampPalette(c("darkgoldenrod1"))
  timeframe <- c(t0,ends[length(ends)])
  gantt.chart(gantt.info, taskcolors=taskcolors,xlim=timeframe, main="Gantt Chart",
              priority.legend=TRUE,vgridpos=vgridpos,vgridlab=vgridlab,hgrid=TRUE
  )
  gantt.chart(gantt.info,vgridlab=seq(t0, by=100, length.out=max(ends)+0*ends[length(ends)]),vgridpos=seq(t0, by=100, length.out=max(ends)+0*ends[length(ends)]),
              main="Gantt Chart",
              taskcolors=taskcolors,#colores,#c(1,2,3,4,5,6,7,8,"purple")
              border.col="black")
  makespan=df_limits$ends[length(df_limits$ends)]
  makespan
}