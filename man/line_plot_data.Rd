% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plots_utils.R
\name{line_plot_data}
\alias{line_plot_data}
\title{Lineplot function}
\usage{
line_plot_data(data, value, startdate = data$Date[1], title)
}
\arguments{
\item{data}{\code{data.frame}, covid19 data.}

\item{value}{\code{character}, Column name variable of data.}

\item{startdate}{\code{character} or \code{Date}, format: "\%Y-\%m-\%d", default start}

\item{title}{\code{character}, Title text, if missing no title}
}
\value{
data.frame
}
\description{
Lineplot function
}
\details{
it plots value over Date
}
\examples{
library(ggplot2)
df <- read_data("case_time_series.csv","covid_data")
data <- process_data(df)
line_plot_data(data, "Daily.Confirmed")
line_plot_data(data, "Daily.Active", title = "Active cases")
}
