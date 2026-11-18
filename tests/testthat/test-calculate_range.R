
test_that("calculate_range works with numeric values", {
  expect_equal(
    calculate_range(c(2, 5, 10, 15)),
    13
  )
})

test_that("calculate_range removes missing values", {
  expect_equal(
    calculate_range(c(4, 8, NA, 12, 20), na_rm = TRUE),
    16
  )
})

test_that("calculate_range retains missing values", {
  expect_true(
    is.na(
      calculate_range(c(4, 8, NA, 12, 20), na_rm = FALSE)
    )
  )
})
