vec = array()
vectors_mean = vector(length = 1000)
plot(c(0,1000), c(0,3), type = 'n',
     xlab = 'N', ylab = 'МО', main ='График зависимости МО от N')
for (i in 0:100) {
  binom = rbinom(0:1000,10,0.1)
  vectors_mean = vectors_mean + as.vector(binom)
  for (i in 1:1000) vec[i] = mean(binom[1:i])
  lines(vec, type = 'l', lwd =1, col='black' )
}
vectors_mean = vectors_mean / 100

legend(800, 2.5, legend=c("МО"),
       col=c("red"), lty=1:2, cex=0.8)
legend(700, 2, legend=c("МО +- 3ско"),
       col=c("purple"), lty=1:2, cex=0.8)

for (i in 1:1000) {
  for (i in 1:1000) vec[i] = mean(vectors_mean[1:i]) - (3 * (0.95 / i ** (1/2)))
  
}
lines(vec, type = 'l', lwd =2, col='purple' )
for (i in 1:1000) {
  
  for (i in 1:1000) vec[i] = mean(vectors_mean[1:i]) + (3 * (0.95 / i ** (1/2)))
  
}
lines(vec, type = 'l', lwd =2, col='purple' )
abline(h = 1, col = 'red', lwd = 2)



#abline(h = 1 + 0.95**3, col = 'purple', lwd = 2)
#abline(h = 1 - 0.95**3, col = 'purple', lwd = 2)

