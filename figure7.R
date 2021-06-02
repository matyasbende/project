samplesize = 24
p <- rpois(1000, lambda=1)
sr <- length(p[p>0])/length(p)*100
pf <- as.data.frame(replicate(100, sample(p,samplesize)))
shufflerates <- 0
for (i in 1:ncol(pf)) {shufflerates[i] <- length(pf[,i][pf[,i]>0])/length(pf[,i])*100}
df <- data.frame(shufflerates)
library(ggplot2)
plottitle <- paste("The distribution of shuffling rates inferred from 24 samples with the true rate being ",sr,"%", sep="")
ggplot(data=df, mapping = aes(x=shufflerates)) +
  geom_density(color="turquoise4", fill="turquoise2", alpha=0.2) +
  labs(title=plottitle, x="Observed shuffling rate", y="Density") +
  theme_minimal()
