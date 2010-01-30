\alias{atkRelationSetRemove}
\name{atkRelationSetRemove}
\title{atkRelationSetRemove}
\description{Removes a relation from the relation set.
This function unref's the \verb{\link{AtkRelation}} so it will be deleted unless there
is another reference to it.}
\usage{atkRelationSetRemove(object, relation)}
\arguments{
\item{\verb{object}}{[\verb{\link{AtkRelationSet}}]  an \verb{\link{AtkRelationSet}}}
\item{\verb{relation}}{[\verb{\link{AtkRelation}}]  an \verb{\link{AtkRelation}}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
