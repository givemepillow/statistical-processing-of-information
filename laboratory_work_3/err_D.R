p = ggplot() + scale_x_continuous(
  trans = 'log2', na.value = T) +
  scale_y_continuous(trans = 'log2', na.value = T)
vec = array()
for (i in 0:100) {
  binom = rbinom(1:1000,10,0.1)

  for (i in 1:1000) vec[i] = (var(binom[1:i]) - 1)**2
  p <- p + geom_line(aes_string(x = 1:1000, y = vec),
                     color = rand_color(1, luminosity = "bright"))
}
p = p + labs(title = "Зависимость квадрата ошибка от объёма выборки.",
             x = "Объём выборки", y = "Квадрат ошибки")

