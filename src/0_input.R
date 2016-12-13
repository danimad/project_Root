library(data.table)

file_list <- dir("data", pattern = ".csv", full.names = TRUE)

lapply(file_list, function(x) {
  assign(
    x = regmatches(x, regexpr("\\w+(?=\\.)", x, perl = TRUE)),
    value = fread(x, encoding = "UTF-8"),
    envir = .GlobalEnv
  )
})