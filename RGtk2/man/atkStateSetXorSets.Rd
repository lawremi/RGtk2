\alias{atkStateSetXorSets}
\name{atkStateSetXorSets}
\title{atkStateSetXorSets}
\description{Constructs the exclusive-or of the two sets, returning \code{NULL} is empty.
The set returned by this operation contains the states in exactly
one of the two sets.}
\usage{atkStateSetXorSets(object, compare.set)}
\arguments{
\item{\verb{object}}{[\code{\link{AtkStateSet}}]  an \code{\link{AtkStateSet}}}
\item{\verb{compare.set}}{[\code{\link{AtkStateSet}}]  another \code{\link{AtkStateSet}}}
}
\value{[\code{\link{AtkStateSet}}]  a new \code{\link{AtkStateSet}} which contains the states which are 
in exactly one of the two sets.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
