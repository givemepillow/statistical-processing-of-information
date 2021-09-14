source("laboratory_work_1/random_date.R")


rand_fact <- function(count=1) {
  fact = c("summer", "winter", "spring", "autumn")
  return(fact[sample.int(4, count, replace = T)])
}

date1 = random_date(count=40)
date2 = random_date(count=40)
k = sample.int(30, 40, replace = T)
b = sample.int(30, 40, replace = T)
a = sample.int(30, 40, replace = T)
c = sample.int(30, 40, replace = T)
fact = rand_fact(40)

write.csv2(
  data.frame(
    date1, date2, k, b, a, c, fact, stringsAsFactors = TRUE
  ), file = "lab1.csv", row.names = FALSE, fileEncoding = "UTF-8"
)