library(plotrix)

data <- c(29.14, 20.34, 16.59, 11.98, 9.47, 6.71, 5.14)
lbls <- c("Азия",
          "Африка",
          "Северная Америка",
          "Южная Америка",
          "Антарктида",
          "Европа",
          "Австралия")
pie3D(data,
      labels=lbls,
      explode=0.5,
      main="Площади континентов",
      shade = 0.5,
      col = hcl.colors(length(data), "Spectral"),
      labelcex = 1.2,
      labelcol = "white"
      )

