\alias{pangoTabArrayGetTabs}
\name{pangoTabArrayGetTabs}
\title{pangoTabArrayGetTabs}
\description{If non-NULL, \code{alignments} and \code{locations} are filled with allocated
arrays of length \code{\link{pangoTabArrayGetSize}}. You must free the
returned list.}
\usage{pangoTabArrayGetTabs(object)}
\arguments{\item{\code{object}}{[\code{\link{PangoTabArray}}]  a \code{\link{PangoTabArray}}}}
\value{
A list containing the following elements:
\item{\code{alignments}}{[\code{\link{PangoTabAlign}}]  location to store a list of tab stop alignments}
\item{\code{locations}}{[integer]  location to store a list of tab positions}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
