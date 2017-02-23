library(ggplot2)

mpg <- seq(10,80)
cpg <- 2.00
avg.mpg <- 60
eff.cost <- ((1/mpg)*cpg)*avg.mpg
mpg.df <- data.frame(mpg,eff.cost)


ggplot(data=mpg.df) + 
  geom_line(aes(x=mpg, y= eff.cost)) +
  scale_x_continuous(name='Avg MPG',breaks=seq(10,80,5)) +
  scale_y_continuous(name='Effective Cost ($/gal)',labels = scales::dollar,breaks=seq(0,12.5,.5)) +
  geom_vline(aes(xintercept=avg.mpg),col='green',alpha=0.5)