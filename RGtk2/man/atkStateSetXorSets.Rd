\alias{atkStateSetXorSets}
\name{atkStateSetXorSets}
\title{atkStateSetXorSets}
\description{Constructs the exclusive-or of the two sets, returning \code{NULL} is empty.
The set returned by this operation contains the states in exactly
one of the two sets.}
\usage{atkStateSetXorSets(object, compare.set)}
\arguments{
\item{\verb{object}}{[\verb{\link{AtkStateSet}}]  an \verb{\link{AtkStateSet}}}
\item{\verb{compare.set}}{[\verb{\link{AtkStateSet}}]  another \verb{\link{AtkStateSet}}}
}
\value{[\verb{\link{AtkStateSet}}]  a new \verb{\link{AtkStateSet}} which contains the states which are 
in exactly one of the two sets.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
