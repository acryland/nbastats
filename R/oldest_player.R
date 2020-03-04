#' This function returns the name and age of the oldest player for a given year.
#' @param x deienfes the dataset
#' @param y difnes the year
#' @export
#' @examples
#' corr_data()

oldest_player <- function(x, y) {
  filter(x, Year == y) %>%
    select(Player, Age) %>%
    arrange(desc(Age)) %>%
    slice(1)
}
