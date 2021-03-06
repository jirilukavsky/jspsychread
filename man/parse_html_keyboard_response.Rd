% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/parsers.R
\name{parse_html_keyboard_response}
\alias{parse_html_keyboard_response}
\title{jspsych-html-keyboard-response parser}
\usage{
parse_html_keyboard_response(d)
}
\arguments{
\item{d}{List with unprocessed trial data

response    (numeric) -    Indicates which key the subject pressed.
rt    (numeric) -    The response time in milliseconds for the subject to make a response. The time is measured from when the stimulus first appears on the screen until the subject's response.
stimulus    (string) - The HTML content that was displayed on the screen.}
}
\value{
Single row tibble with results
}
\description{
https://www.jspsych.org/plugins/jspsych-html-keyboard-response/
}
\examples{
fn <- system.file("testdata", "jspsych-html-keyboard-response.json", package = "jspsychread")
d  <- read_jspsych(fn)
d$raw \%>\%
  purrr::map(~ parse_html_keyboard_response(.x)) \%>\%
  dplyr::bind_rows()
}
