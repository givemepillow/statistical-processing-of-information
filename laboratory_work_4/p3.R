n_values=rnorm(500, mean=1000)
h <- hist(n_values, col="#3dfcdf", 
          xlab="Распределенные величины",
          ylab="Частота",
          main="Нормальное распределение")
text(h$mids, h$counts, labels = h$counts, adj = c(0.5, -0.5))
par(new=TRUE)
plot(density(n_values), col="#bc3dfc", lwd=5, yaxt="n", xaxt="n",
     bty='n', xlab="", ylab="", main='')


b_values <- rbinom(1:500,20,0.2)
h1 <- hist(b_values, col="#ccfc3d", 
           xlab="Распределенные величины",
           ylab="Частота", main="Биномиальное распределение")
text(h1$mids, h1$counts, labels = h1$counts, adj = c(0.5, -0.5))
par(new=TRUE)
plot(density(b_values), col="#3d5afc", lwd=5, yaxt="n", xaxt="n",
     bty='n', xlab="", ylab="", main='')

