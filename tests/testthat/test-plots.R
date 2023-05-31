# if (FALSE) {
#   devtools::load_all()
# }
df <- read_data("case_time_series.csv","covid_data")

data <- process_data(df)

test_that("plot works", {
  pp <- line_plot_data(data, "Daily.Active")

  expect_equal(class(pp), c('plotly','htmlwidget'), 
               label = "wrong plot class")
  
  pp <- bar_plot_data(data, "Daily.Active")
  
  expect_equal(class(pp), c('plotly','htmlwidget'), 
               label = "wrong plot class")
})
