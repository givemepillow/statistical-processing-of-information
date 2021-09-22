negative_values <- function(df) {
  return(lapply(df[sapply(df, function(col) {
    if (any(col < 0, na.rm = T)) return(T)
    return(F)
  })], function(col) {
    return(col[col < 0]) 
  }))
}
