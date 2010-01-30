\alias{atkRelationTypeForName}
\name{atkRelationTypeForName}
\title{atkRelationTypeForName}
\description{Get the \code{\link{AtkRelationType}} type corresponding to a relation name.}
\usage{atkRelationTypeForName(name)}
\arguments{\item{\verb{name}}{[character]  a string which is the (non-localized) name of an ATK relation type.}}
\value{[\code{\link{AtkRelationType}}]  the \code{\link{AtkRelationType}} enumerated type corresponding to the specified name,
         or \verb{ATK_RELATION_NULL} if no matching relation type is found.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
