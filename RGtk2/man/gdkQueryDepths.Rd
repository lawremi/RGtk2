\alias{gdkQueryDepths}
\name{gdkQueryDepths}
\title{gdkQueryDepths}
\description{This function returns the available bit depths for the default
screen. It's equivalent to listing the visuals
(\code{\link{gdkListVisuals}}) and then looking at the depth field in each
visual, removing duplicates.}
\usage{gdkQueryDepths()}
\details{The list returned by this function should not be freed.}
\value{
A list containing the following elements:
\item{\verb{depths}}{return location for available depths. \emph{[  \acronym{out}  ][  \acronym{array}  ]}}
\item{\verb{count}}{return location for number of available depths. \emph{[  \acronym{out}  ]}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
