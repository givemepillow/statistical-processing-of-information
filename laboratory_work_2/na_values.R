na_values <- function(df) {
  for (col_name in names(df)) {
    col_mean = mean(df[[col_name]], na.rm = T)
    df[col_name][is.na(df[col_name])] = col_mean
  }
  return(df)
}