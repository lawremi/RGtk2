\alias{atkValueGetMinimumIncrement}
\name{atkValueGetMinimumIncrement}
\title{atkValueGetMinimumIncrement}
\description{Gets the minimum increment by which the value of this object may be changed.  If zero,
the minimum increment is undefined, which may mean that it is limited only by the 
floating point precision of the platform.}
\usage{atkValueGetMinimumIncrement(object)}
\arguments{\item{\code{object}}{[\code{\link{AtkValue}}]  a GObject instance that implements AtkValueIface}}
\details{  Since  ATK 1.12}
\value{
A list containing the following elements:
\item{\code{value}}{[R object]  a \code{R object} representing the minimum increment by which the accessible value may be changed}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
