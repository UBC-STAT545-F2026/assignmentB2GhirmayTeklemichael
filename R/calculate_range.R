
#' Calculate the Range of Numeric Values
#'
#' @description
#' Calculates the difference between the maximum and minimum
#' values in a numeric vector. Missing values can be removed
#' or retained depending on the na_rm argument.
#'
#' @param x A numeric vector containing the values.
#' @param na_rm A logical value indicating whether missing
#'   values should be removed. Defaults to TRUE.
#'
#' @return A single numeric value representing the difference
#'   between the maximum and minimum values.
#'   Returns NA if missing values are present and
#'   na_rm is FALSE.
#'
#' @examples
#' calculate_range(c(2, 5, 10, 15))
#'
#' calculate_range(c(4, 8, NA, 12, 20), na_rm = TRUE)
#'
#' calculate_range(c(4, 8, NA, 12, 20), na_rm = FALSE)
#'
#' @export

calculate_range <- function(x, na_rm = TRUE) {

  stopifnot(is.numeric(x))

  if (length(x) == 0 || all(is.na(x))) {
    stop("Input must contain at least one non-missing value.")
  }

  max(x, na.rm = na_rm) - min(x, na.rm = na_rm)
}
