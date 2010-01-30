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
\item{\verb{object}}{[\verb{\link{AtkRelationSet}}]  an \verb{\link{AtkRelationSet}}}
\item{\verb{relation}}{[\verb{\link{AtkRelation}}]  an \verb{\link{AtkRelation}}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
