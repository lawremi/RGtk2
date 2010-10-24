\alias{gdkEventGetAxis}
\name{gdkEventGetAxis}
\title{gdkEventGetAxis}
\description{Extract the axis value for a particular axis use from
an event structure.}
\usage{gdkEventGetAxis(object, axis.use)}
\arguments{
\item{\verb{object}}{a \code{\link{GdkEvent}}}
\item{\verb{axis.use}}{the axis use to look for}
}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} if the specified axis was found, otherwise \code{FALSE}}
\item{\verb{value}}{location to store the value found}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
