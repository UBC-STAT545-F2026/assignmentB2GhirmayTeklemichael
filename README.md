
#### assignmentB2GhirmayTeklemichael

In this assignment a function called `calculate_range()` is provided in
R package that calculates the difference between the maximum and minimum
values.

#### how to install it?

You can install this package from GitHub using a devtool packages
followed by the specific URL as shown below.

``` r
devtools::install_github(
  "UBC-STAT545-F2026/assignmentB2GhirmayTeklemichael"
)
```

## load and test the package

Load the package and calculate the range of numeric values.

``` r
library(assignmentB2GhirmayTeklemichael)

# Calculate the range
calculate_range(c(2, 5, 10, 20))
```

    ## [1] 18

``` r
# Remove missing values
calculate_range(c(4, 8, NA, 12, 20), na_rm = TRUE)
```

    ## [1] 16

``` r
# Keep missing values
calculate_range(c(4, 8, NA, 12, 20), na_rm = FALSE)
```

    ## [1] NA
