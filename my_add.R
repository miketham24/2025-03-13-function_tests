my_add <- function(x) {
    return(x + 10)
}

# my_add(10) == 20
# my_add(100) == 110
# my_add(10.5) == 20.5
stopifnot(my_add(10) == 20)
stopifnot(my_add(100) == 110)
stopifnot(my_add(10.5) == 20.5)
stopifnot(TRUE)
stopifnot(FALSE)


# test-driven development
# install.packages("testthat")
library(testthat)

expect_equal(my_add(10), 20)
expect_equal(my_add(100), 110)
expect_equal(my_add(10.5), 20.5)
