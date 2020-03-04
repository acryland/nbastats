#' This function selects all numeric variables for a given year and creates a correlogram.
#' @param x deienfes the dataset
#' @param y difnes the year
#' @keywords correlogram
#' @export
#' @examples
#' corr_data()

corr_data <- function(x, y) {
  {x.y.num <- x %>%
    filter(Year == y) %>%
    select_if(is.numeric)}
  {d <- cor(x.y.num)}
  {corrplot(d, method = "circle")}
}
