df_mean <- function(df) {
  return(
    list(
      rows = as.vector(apply(df, 1, mean)),
      columns = as.vector(apply(df, 2, mean))
    )
  )
}

