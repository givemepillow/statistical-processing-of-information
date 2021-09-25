colunm_sum <- function(...) {
  l = list()
  for (d in list(...)) {
    l = append(l, lapply(d, function(col) {
      return(sum(col[col > 0]))
    }))
  }
  return(l)
}
