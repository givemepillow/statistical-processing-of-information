p = ggplot() + scale_x_continuous(
  trans = 'log2', na.value = T) + scale_y_continuous(
    trans = 'log2', na.value = T)
vectors_mean = vector(length = 1000)
vec = array()
b_vec = array()
vectors_mean_t = array()
vectors_d_t = array()
for (i in 0:100) {
  binom = rbinom(1:1000,10,0.1)
  for (i in 1:1000) vec[i] = (var(binom[1:i]) - 0.95)**2
  vectors_mean = vectors_mean + vec
}
binom = rbinom(1:1000,10,0.1)
for (i in 1:1000) {
  b_vec[i] = (binom[i] - 1)**4 / i
}
for (i in 1:1000) {
  vectors_d_t[i] = (2.925 - 0.95**2) / i
}
p = p + 
labs(title = "Зависимость квадрата ошибка от объёма выборки.",
x = "Объём выборки", y = "Квадрат ошибки")


p = p + geom_line(aes_string
                  (x = 1:1000, y =(vectors_mean / 100)), color = "red")
p = p + geom_line(aes_string
                  (x = 1:1000, y =vectors_d_t), color = "deepskyblue")
p = p +  geom_text(
  aes(x=356, y = 1, label = "Теоретическая"), color = "deepskyblue")
p + geom_text(
  aes(
    x=356, y = 0.5, label = "Усреднённая по 100 экспериментам"), color = "red")
               
