\alias{atkStateSetContainsStates}
\name{atkStateSetContainsStates}
\title{atkStateSetContainsStates}
\description{Checks whether the states for all the specified types are in the 
specified set.}
\usage{atkStateSetContainsStates(object, types, n.types)}
\arguments{
\item{\code{object}}{[\code{\link{AtkStateSet}}]  an \code{\link{AtkStateSet}}}
\item{\code{types}}{[\code{\link{AtkStateType}}]  a list of \code{\link{AtkStateType}}}
\item{\code{n.types}}{[integer]  The number of elements in the list}
}
\value{[logical]  \code{TRUE} if all the states for \code{type} are in \code{set}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
