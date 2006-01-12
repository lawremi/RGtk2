\alias{atkObjectRemoveRelationship}
\name{atkObjectRemoveRelationship}
\title{atkObjectRemoveRelationship}
\description{Removes a relationship of the specified type with the specified target.}
\usage{atkObjectRemoveRelationship(object, relationship, target)}
\arguments{
\item{\code{object}}{[\code{\link{AtkObject}}]  The \code{\link{AtkObject}} from which an AtkRelation is to be removed. }
\item{\code{relationship}}{[\code{\link{AtkRelationType}}]  The \code{\link{AtkRelationType}} of the relation}
\item{\code{target}}{[\code{\link{AtkObject}}]  The \code{\link{AtkObject}} which is the target of the relation to be removed.}
}
\value{[logical] TRUE if the relationship is removed.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
