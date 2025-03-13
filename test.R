source("count.R")

library(dplyr)
library(testthat)
set.seed(2024)

# test input data
two_classes_2_obs <- tibble(class_labels = rep(c("class1", "class2"), 2), values = round(runif(4), 1))
two_classes_2_and_1_obs <- tibble(class_labels = c(rep("class1", 2), "class2"), values = round(runif(3), 1))
one_class_2_obs <- tibble(class_labels = c("class1", "class1"), values = round(runif(2), 1))
empty_df <- tibble(class_labels = character(0), values = double(0))
two_classes_two_obs_as_list <- list(class_labels = rep(c("class1", "class2"), 2), values = round(runif(4), 1))

# expected test outputs
two_classes_2_obs_output <- tibble(class = c("class1", "class2"), count = c(2, 2))
two_classes_2_and_1_obs_output <- tibble(class = c("class1", "class2"), count = c(2, 1))
one_class_2_obs_output <- tibble(class = "class1", count = 2)
empty_df_output <- tibble(class = character(0), count = numeric(0))

test_that("a data frame with 2 classes and 2 observations", {
    expect_equal(count_classes(two_classes_2_obs, class_labels), two_classes_2_obs_output)

    expect_s3_class(count_classes(two_classes_2_obs, class_labels), "data.frame")
})
