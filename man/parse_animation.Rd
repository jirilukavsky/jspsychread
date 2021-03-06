% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/parsers.R
\name{parse_animation}
\alias{parse_animation}
\title{jspsych-animation parser}
\usage{
parse_animation(d)
}
\arguments{
\item{d}{List with unprocessed trial data

animation_sequence    array    An array, where each element is an object that represents a stimulus in the animation sequence. Each object has a stimulus property, which is the image that was displayed, and a time property, which is the time in ms, measured from when the sequence began, that the stimulus was displayed. The array will be encoded in JSON format when data is saved using either the .json() or .csv() functions.
response    array    An array, where each element is an object representing a response given by the subject. Each object has a stimulus property, indicating which image was displayed when the key was pressed, an rt property, indicating the time of the key press relative to the start of the animation, and a key_press property, indicating which key was pressed. The array will be encoded in JSON format when data is saved using either the .json() or .csv() functions.}
}
\value{
Single row tibble with results
}
\description{
https://www.jspsych.org/plugins/jspsych-animation/
}
\examples{
fn <- system.file("testdata", "jspsych-animation.json", package = "jspsychread")
d  <- read_jspsych(fn)
d$raw[2] \%>\%
  purrr::map(~ parse_animation(.x)) \%>\%
  dplyr::bind_rows()
}
