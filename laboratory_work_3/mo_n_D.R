vec = array()
vectors_mean = vector(length = 1000)
plot(c(0,1000), c(0, 3) , type = 'n',
     xlab = 'N', ylab = 'D', main ='График зависимости D от N')
for (i in 0:100) {
  binom = rbinom(0:1000,10,0.1)
  #vectors_mean = vectors_mean + as.vector(binom)
  for (i in 1:1000) {vec[i]  = var(binom[1:i])}
  vectors_mean = vectors_mean + vec
  lines(vec, type = 'l', lwd =1, col=rand_color(10, luminosity = "bright"))
}
vectors_mean = vectors_mean / 100

legend(800, 2.5, legend=c("D"),
       col=c("red"), lty=1:2, cex=0.8)
legend(700, 2, legend=c("D +- 3ско"),
       col=c("black"), lty=1:2, cex=0.8)

for (i in 1:1000) {
  for (i in 1:1000) vec[i] = mean(vectors_mean[1:i]) - (3 * (0.95 / i ** (1/2)))
  
}
lines(vec, type = 'l', lwd =3, col='black' )
for (i in 1:1000) {
  for (i in 1:1000) vec[i] = mean(vectors_mean[1:i]) + (3 * (0.95 / i ** (1/2)))
  
}
lines(vec, type = 'l', lwd =3, col='black' )
abline(h = 0.95, col = 'red', lwd = 2)
Ы
