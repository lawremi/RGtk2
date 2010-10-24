\alias{pangoTabArrayGetTab}
\name{pangoTabArrayGetTab}
\title{pangoTabArrayGetTab}
\description{Gets the alignment and position of a tab stop.}
\usage{pangoTabArrayGetTab(object, tab.index)}
\arguments{
\item{\verb{object}}{a \code{\link{PangoTabArray}}}
\item{\verb{tab.index}}{tab stop index}
}
\value{
A list containing the following elements:
\item{\verb{alignment}}{location to store alignment, or \code{NULL}}
\item{\verb{location}}{location to store tab position, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
