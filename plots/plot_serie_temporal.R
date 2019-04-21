library(ggplot2);
library(gtrendsR);

time <- ("2012-01-01 2019-01-01");
res <- gtrends("deep learning", time = time);

data <- res$interest_over_time;

ggplot(data=data, aes(x=date, y=hits, group=keyword, col=keyword))+
  geom_line() + xlab('Anos') + ylab('Interesse')+ theme_bw() +
  theme(legend.title = element_blank(), legend.position="none",
        legend.text=element_text(size=12)) + 
  ggtitle("Buscas sobre Aprendizado profundo 2012-2019")
