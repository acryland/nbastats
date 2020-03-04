#' This function returns the name and points of the highest scoring player for a given year.
#' @param x deienfes the dataset
#' @param y difnes the year
#' @keywords
#' @export
#' @examples
#' corr_data()

most_points <- function(x, y) {
  filter(x, Year == y) %>%
    select(Player, PTS) %>%
    arrange(desc(PTS)) %>%
    slice(1)
}
