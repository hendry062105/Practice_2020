gantt_johnson=function(t0,starts,ends){
  limits_interval_v2()
  df_limits = data.frame(starts,ends)
  library(plotrix)
  gantt.info<-list(labels=c("M1","M2"),
                 starts=starts,
                 ends=ends,
                 priorities=c(1,4))
  months <- seq(t0, by=1, length.out=ends[length(ends)])
  monthslab <- format(months, format="%b")
  vgridpos<-(months)#,format=Ymd.format)
  vgridlab<-monthslab
  colfunc <- colorRampPalette(c("darkgoldenrod1"))
  timeframe <- c(t0,ends[length(ends)])
  gantt.chart(gantt.info, taskcolors=colfunc(length(gantt.info$labels)),xlim=timeframe, main="Gantt Chart",
            priority.legend=TRUE,vgridpos=vgridpos,vgridlab=vgridlab,hgrid=TRUE
            )
  colores=c();for (i in 1:length(trabajos)){colores=c(colores,rep(rainbow(length(trabajos))[i],2))}
  gantt.chart(gantt.info,vgridlab=t0:ends[length(ends)],vgridpos=t0:ends[length(ends)],
            main="Gantt Chart",
            taskcolors=colores,#c(1,2,3,4,5,6,7,8,"purple")
            border.col="black")
  makespan=df_limits$ends[length(df_limits$ends)]
  total_idle_time=sum(idle)
  print(t(data.frame(idle)))
  print(t(data.frame(makespan,total_idle_time)))
}

