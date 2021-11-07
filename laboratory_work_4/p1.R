library(ggplot2)
library(ggthemes)

data(InsectSprays)
df = InsectSprays
ggplot(df, aes(x=spray, y=count, fill=spray, label= rownames(df))) + 
  geom_boxplot(alpha = 0.7, position=position_dodge(1)) +
  labs(
      titile='График №1',
      subtitle = 'Эффективность инсектицидов',
      x = 'Инсектициды',
      y = 'Количество выживших насекомых',
      color = 'Spray'
    ) + 
  theme_fivethirtyeight() +
  theme(axis.title = element_text())+ 
  stat_summary(fun=mean, geom="point", size=2, color="red")

