################################################################################
# Code to load some Chinese related datasets

### Some useful paths
chinese_root <- 'C:\\Users\\eblonkowski\\Downloads\\admin\\chinese'
data_root <- file.path(chinese_root, 'data')
ccd_path <- file.path(data_root, 'chinese-character-decomposition.csv')

#' Loads the Chinese Character Decomposition from Wikimedia.
#' @description Format expected is .CSV (comma separated values)
#' @export
load_ccd <- function(file){
  r <- scan(file = ccd_path, what = character(), encoding = 'UTF-8')
  rl <- strsplit(',') %>% vapply(FUN = length, FUN.VALUE = 1)
  # keep only the lines we could correcly read
  r <- r[rl == 11] # there should be 11 lines
  ## convert the columns to vectors
  # character column
  ch <- vapply(r2, function(x) x[1], FUN.VALUE = 'a') # character column
  # 
}

print2 <- function(d, ...) { d %>% head %>% printdf(...) }

printdf <- function (x, ..., digits = NULL, quote = FALSE, right  
                              = TRUE,
                              row.names = TRUE)
{
  n <- length(row.names(x))
  if (length(x) == 0L) {
    cat(sprintf(ngettext(n, "data frame with 0 columns and %d row",
                         "data frame with 0 columns and %d rows", 
                         domain = "R-base"),
                n), "\n", sep = "")
  }
  else if (n == 0L) {
    print.default(names(x), quote = FALSE)
    cat(gettext("<0 rows> (or 0-length row.names)\n"))
  }
  else {
    #old# m <- as.matrix(format.data.frame(x, digits = digits,
    #old#     na.encode = FALSE))
    m <- as.matrix(x)
    if (!isTRUE(row.names))
      dimnames(m)[[1L]] <- if (identical(row.names, FALSE))
        rep.int("", n)
    else row.names
    print(m, ..., quote = quote, right = right)
  }
  invisible(x)
}