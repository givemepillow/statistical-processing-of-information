library(ggplot2)
library(ggthemes)



ToothGrowth$dose <- as.factor(ToothGrowth$dose)
ggplot(ToothGrowth, aes(x=dose, y=len, fill=dose)) + 
  scale_fill_brewer(palette="Dark2") +
  geom_violin(trim=FALSE) +
  theme_fivethirtyeight() +
  theme(axis.title = element_text()) +
  theme(legend.position="bottom") +
  stat_summary(fun=mean, geom="point", size=4, color="#ff577e") +
  stat_summary(fun=var, geom="point", size=4, color="deepskyblue")

