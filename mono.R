mono <- function(v) {
  if (length(v) < 1)
    return(T)
  mono_type <- v[1] - v[2]
  for (i in 2:length(v)) {
    if ((mono_type * (v[i - 1] - v[i])) <= 0) {
      return(F)
    }
  }
  return(TRUE)
}
