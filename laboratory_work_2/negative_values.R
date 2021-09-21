negative_values <- function(...) {
  l = list()
  for (df in list(...)) {
    nms = names(df)
    index = 0
    for (var in df) {
      index = index + 1
      if (any(var < 0)) {
        l[[nms[index]]] = var[var < 0]
      }
    }
    index = 0
  }
  return(l)
}