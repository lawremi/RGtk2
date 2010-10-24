\alias{atkRelationSetAdd}
\name{atkRelationSetAdd}
\title{atkRelationSetAdd}
\description{Add a new relation to the current relation set if it is not already
present.
This function ref's the AtkRelation so the caller of this function
should unref it to ensure that it will be destroyed when the AtkRelationSet
is destroyed.}
\usage{atkRelationSetAdd(object, relation)}
\arguments{
\item{\verb{object}}{[\code{\link{AtkRelationSet}}]  an \code{\link{AtkRelationSet}}}
\item{\verb{relation}}{[\code{\link{AtkRelation}}]  an \code{\link{AtkRelation}}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
