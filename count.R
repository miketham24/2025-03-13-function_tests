count_classes <- function(data_frame, class_col) {
    # returns a df with 2 columns: class and count
    data_frame |>
        dplyr::group_by({{ class_col }}) |>
        dplyr::summarise(count = n()) |>
        dplyr::rename("class" = {{ class_col }})
}
