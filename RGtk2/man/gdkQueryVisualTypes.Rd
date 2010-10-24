\alias{gdkQueryVisualTypes}
\name{gdkQueryVisualTypes}
\title{gdkQueryVisualTypes}
\description{This function returns the available visual types for the default
screen. It's equivalent to listing the visuals
(\code{\link{gdkListVisuals}}) and then looking at the type field in each
visual, removing duplicates.}
\usage{gdkQueryVisualTypes()}
\details{The list returned by this function should not be freed.}
\value{
A list containing the following elements:
\item{\verb{visual.types}}{return location for the available visual types}
\item{\verb{count}}{return location for the number of available visual types}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
