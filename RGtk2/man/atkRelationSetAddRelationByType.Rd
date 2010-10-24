\alias{atkRelationSetAddRelationByType}
\name{atkRelationSetAddRelationByType}
\title{atkRelationSetAddRelationByType}
\description{Add a new relation of the specified type with the specified target to 
the current relation set if the relation set does not contain a relation
of that type. If it is does contain a relation of that typea the target
is added to the relation.}
\usage{atkRelationSetAddRelationByType(object, relationship, target)}
\arguments{
\item{\verb{object}}{[\code{\link{AtkRelationSet}}]  an \code{\link{AtkRelationSet}}}
\item{\verb{relationship}}{[\code{\link{AtkRelationType}}]  an \code{\link{AtkRelationType}}}
\item{\verb{target}}{[\code{\link{AtkObject}}]  an \code{\link{AtkObject}}}
}
\details{  Since 1.9}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
