\alias{atkRelationNew}
\name{atkRelationNew}
\title{atkRelationNew}
\description{Create a new relation for the specified key and the specified list
of targets.  See also \code{\link{atkObjectAddRelationship}}.}
\usage{atkRelationNew(targets, relationship)}
\arguments{
\item{\verb{targets}}{[\code{\link{AtkObject}}]  a list of pointers to \verb{AtkObjects}  }
\item{\verb{relationship}}{[\code{\link{AtkRelationType}}]  an \code{\link{AtkRelationType}} with which to create the new
 \code{\link{AtkRelation}}}
}
\value{[\code{\link{AtkRelation}}]  a pointer to a new \code{\link{AtkRelation}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
