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
  ccd <- read.csv(ccd_path, encoding = 'UTF-8', stringsAsFactors = FALSE)
}