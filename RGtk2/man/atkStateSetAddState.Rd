\alias{atkStateSetAddState}
\name{atkStateSetAddState}
\title{atkStateSetAddState}
\description{Add a new state for the specified type to the current state set if
it is not already present.}
\usage{atkStateSetAddState(object, type)}
\arguments{
\item{\code{object}}{[\code{\link{AtkStateSet}}]  an \code{\link{AtkStateSet}}}
\item{\code{type}}{[\code{\link{AtkStateType}}]  an \code{\link{AtkStateType}}}
}
\value{[logical] \code{TRUE} if  the state for \code{type} is not already in \code{set}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
