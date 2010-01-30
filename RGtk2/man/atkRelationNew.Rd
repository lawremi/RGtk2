\alias{atkRelationNew}
\name{atkRelationNew}
\title{atkRelationNew}
\description{Create a new relation for the specified key and the specified list
of targets.  See also \code{\link{atkObjectAddRelationship}}.}
\usage{atkRelationNew(targets, relationship)}
\arguments{
\item{\verb{targets}}{[\verb{\link{AtkObject}}]  a list of pointers to \verb{AtkObjects}  }
\item{\verb{relationship}}{[\code{\link{AtkRelationType}}]  an \code{\link{AtkRelationType}} with which to create the new
 \verb{\link{AtkRelation}}}
}
\value{[\verb{\link{AtkRelation}}]  a pointer to a new \verb{\link{AtkRelation}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
