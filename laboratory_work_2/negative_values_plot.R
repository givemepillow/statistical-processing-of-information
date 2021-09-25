negative_values_plot <- function(df) {
  return(list(
    pos = lapply(df, function(c) length(c[c > 0])),
    neg = lapply(df, function(c) length(c[c < 0]))
    ))
}
