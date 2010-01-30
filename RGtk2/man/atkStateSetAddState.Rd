\alias{atkStateSetAddState}
\name{atkStateSetAddState}
\title{atkStateSetAddState}
\description{Add a new state for the specified type to the current state set if
it is not already present.}
\usage{atkStateSetAddState(object, type)}
\arguments{
\item{\verb{object}}{[\verb{\link{AtkStateSet}}]  an \verb{\link{AtkStateSet}}}
\item{\verb{type}}{[\code{\link{AtkStateType}}]  an \code{\link{AtkStateType}}}
}
\value{[logical] \code{TRUE} if  the state for \code{type} is not already in \code{set}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
