\alias{atkRelationSetContains}
\name{atkRelationSetContains}
\title{atkRelationSetContains}
\description{Determines whether the relation set contains a relation that matches the
specified type.}
\usage{atkRelationSetContains(object, relationship)}
\arguments{
\item{\verb{object}}{[\code{\link{AtkRelationSet}}]  an \code{\link{AtkRelationSet}}}
\item{\verb{relationship}}{[\code{\link{AtkRelationType}}]  an \code{\link{AtkRelationType}}}
}
\value{[logical] \code{TRUE} if \code{relationship} is the relationship type of a relation
in \code{set}, \code{FALSE} otherwise}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
