\alias{gdkQueryDepths}
\name{gdkQueryDepths}
\title{gdkQueryDepths}
\description{This function returns the available bit depths for the default
screen. It's equivalent to listing the visuals
(\code{\link{gdkListVisuals}}) and then looking at the depth field in each
visual, removing duplicates.}
\usage{gdkQueryDepths()}
\details{  .}
\value{
A list containing the following elements:
\item{\code{depths}}{[integer]  return location for available depths }
\item{\code{count}}{[integer]  return location for number of available depths}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
