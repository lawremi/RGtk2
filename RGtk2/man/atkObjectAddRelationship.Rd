\alias{atkObjectAddRelationship}
\name{atkObjectAddRelationship}
\title{atkObjectAddRelationship}
\description{Adds a relationship of the specified type with the specified target.}
\usage{atkObjectAddRelationship(object, relationship, target)}
\arguments{
\item{\verb{object}}{[\code{\link{AtkObject}}]  The \code{\link{AtkObject}} to which an AtkRelation is to be added. }
\item{\verb{relationship}}{[\code{\link{AtkRelationType}}]  The \code{\link{AtkRelationType}} of the relation}
\item{\verb{target}}{[\code{\link{AtkObject}}]  The \code{\link{AtkObject}} which is to be the target of the relation.}
}
\value{[logical] TRUE if the relationship is added.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
