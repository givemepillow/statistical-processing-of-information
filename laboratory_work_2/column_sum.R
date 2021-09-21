colunm_sum <- function(...) {
  l = list()
  for (df in list(...)) {
    nms = names(df)
    index = 0
    for (var in df) {
      index = index + 1
      l[[nms[index]]] = sum(var)
    }
    index = 0
  }
  return(l)
}