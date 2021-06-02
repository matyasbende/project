df <- data.frame(Group=c("High Salinity", "Normal LB"),
                 Shuffled=c(11, 13))
library(ggplot2)
ggplot(data=df, aes(x=Group, y=Shuffled, color=Group)) +
  geom_bar(stat = 'identity', width =0.5, fill="white") +
  geom_text(aes(label=Shuffled), vjust=1.6, color="gray25", size=12) +
  theme(axis.text = element_text(size=24),
        axis.title.x=element_text(size=0),
        axis.title.y=element_text(size=24, color="gray25")) #Figure 3A plot


df2 <- data.frame(Group=c("Dilutions", "Batch Ferm."), 
                 Shuffled=c(23, 17))
library(ggplot2)
ggplot(data=df, aes(x=Group, y=Shuffled, color=Group)) +
  geom_bar(stat = 'identity', width =0.5, fill="white") +
  geom_text(aes(label=Shuffled), vjust=1.6, color="gray25", size=12) +
  theme(axis.text = element_text(size=24),
        axis.title.x=element_text(size=0),
        axis.title.y=element_text(size=24, color="gray25")) +
  scale_x_discrete(limits=c("Dilutions", "Batch Ferm.")) #Figure 3B plot
