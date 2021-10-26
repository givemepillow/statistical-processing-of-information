p = ggplot() + scale_x_continuous(
  trans = 'log2', na.value = T)
vectors_mean = vector(length = 1000)
vec = array()
for (i in 0:100) {
  binom = rbinom(1:1000,10,0.1)
  vectors_mean = vectors_mean + as.vector(binom)
  for (i in 1:1000) vec[i] = (mean(binom[1:i]) - 1)**2
  p <- p + geom_line(aes_string(x = 1:1000, y = vec), color = "orange")
}
p = p + labs(title = "Зависимость квадрата ошибка от объёма выборки.",
             x = "Объём выборки", y = "Квадрат ошибки")


p + geom_line(aes_string(x = 1:1000, y =(((vectors_mean / 100) - 1 )**2)), color = "red")

