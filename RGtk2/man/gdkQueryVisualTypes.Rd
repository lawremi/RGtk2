\alias{gdkQueryVisualTypes}
\name{gdkQueryVisualTypes}
\title{gdkQueryVisualTypes}
\description{This function returns the available visual types for the default
screen. It's equivalent to listing the visuals
(\code{\link{gdkListVisuals}}) and then looking at the type field in each
visual, removing duplicates.}
\usage{gdkQueryVisualTypes()}
\details{.  }
\value{
A list containing the following elements:
\item{\code{visual.types}}{[\code{\link{GdkVisualType}}]  return location for the available visual types}
\item{\code{count}}{[integer]  return location for the number of available visual types}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
