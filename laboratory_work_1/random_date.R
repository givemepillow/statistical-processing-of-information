random_date <- function(start_date=as.Date("2000-01-01"),
                        end_date=Sys.Date(), count=1) {
  return(
    sample(
        seq.Date(start_date, end_date, "day"), count, replace = T
      )
    )
}