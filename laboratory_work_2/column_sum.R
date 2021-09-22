colunm_sum <- function(df) {
  return(lapply(df, function(col) {
    return(sum(col[col > 0]))
  }))
}