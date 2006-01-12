\alias{pangoTabArrayGetTab}
\name{pangoTabArrayGetTab}
\title{pangoTabArrayGetTab}
\description{Gets the alignment and position of a tab stop.
\code{alignment} or \code{location} may be NULL if you aren't
interested in their value.}
\usage{pangoTabArrayGetTab(object, tab.index)}
\arguments{
\item{\code{object}}{[\code{\link{PangoTabArray}}]  a \code{\link{PangoTabArray}}}
\item{\code{tab.index}}{[integer]  tab stop index}
}
\value{
A list containing the following elements:
\item{\code{alignment}}{[\code{\link{PangoTabAlign}}]  location to store alignment}
\item{\code{location}}{[integer]  location to store tab position}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
