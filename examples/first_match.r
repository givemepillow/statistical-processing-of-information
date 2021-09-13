first_match <- function(vec, x) {
  for (i in 1:length(vec)) {
    if (vec[i] == x) return(i)
  }
  return (0)
}
