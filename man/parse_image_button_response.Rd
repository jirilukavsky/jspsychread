% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/parsers.R
\name{parse_image_button_response}
\alias{parse_image_button_response}
\title{jspsych-image-button-response parser}
\usage{
parse_image_button_response(d)
}
\arguments{
\item{d}{List with unprocessed trial data

rt    (numeric) -    The response time in milliseconds for the subject to make a response. The time is measured from when the stimulus first appears on the screen until the subject's response.
response    (numeric) -    Indicates which button the subject pressed. The first button in the choices array is 0, the second is 1, and so on.
stimulus    (string) - The path of the image that was displayed.}
}
\value{
Single row tibble with results
}
\description{
https://www.jspsych.org/plugins/jspsych-image-button-response/
}
