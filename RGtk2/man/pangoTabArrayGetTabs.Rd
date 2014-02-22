\alias{pangoTabArrayGetTabs}
\name{pangoTabArrayGetTabs}
\title{pangoTabArrayGetTabs}
\description{If non-\code{NULL}, \code{alignments} and \code{locations} are filled with allocated
arrays of length \code{\link{pangoTabArrayGetSize}}. You must free the
returned list.}
\usage{pangoTabArrayGetTabs(object)}
\arguments{\item{\verb{object}}{[\code{\link{PangoTabArray}}]  a \code{\link{PangoTabArray}}}}
\value{
A list containing the following elements:
\item{\verb{alignments}}{[\code{\link{PangoTabAlign}}]  location to store a list of tab stop alignments, or \code{NULL}}
\item{\verb{locations}}{[integer]  location to store a list of tab positions, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
