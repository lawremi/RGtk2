\alias{atkRelationSetRemove}
\name{atkRelationSetRemove}
\title{atkRelationSetRemove}
\description{Removes a relation from the relation set.
This function unref's the \code{\link{AtkRelation}} so it will be deleted unless there
is another reference to it.}
\usage{atkRelationSetRemove(object, relation)}
\arguments{
\item{\verb{object}}{[\code{\link{AtkRelationSet}}]  an \code{\link{AtkRelationSet}}}
\item{\verb{relation}}{[\code{\link{AtkRelation}}]  an \code{\link{AtkRelation}}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
