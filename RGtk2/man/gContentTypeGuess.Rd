\alias{gContentTypeGuess}
\name{gContentTypeGuess}
\title{gContentTypeGuess}
\description{Guesses the content type based on example data. If the function is 
uncertain, \code{result.uncertain} will be set to \code{TRUE}. Either \code{filename}
or \code{data} may be \code{NULL}, in which case the guess will be based solely
on the other argument.}
\usage{gContentTypeGuess(filename, data)}
\arguments{
\item{\verb{filename}}{a string, or \code{NULL}}
\item{\verb{data}}{a stream of data, or \code{NULL}}
}
\value{
A list containing the following elements:
\item{retval}{[char] a string indicating a guessed content type for the
given data.}
\item{\verb{result.uncertain}}{a flag indicating the certainty of the result}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
