negative_values_plot <- function(df) {
  return(c(
    lapply(df, function(c) length(c[c > 0])),
    lapply(df, function(c) length(c[c < 0]))
    ))
}
