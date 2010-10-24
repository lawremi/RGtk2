\alias{atkObjectGetAttributes}
\name{atkObjectGetAttributes}
\title{atkObjectGetAttributes}
\description{Get a list of properties applied to this object as a whole, as an \code{\link{AtkAttributeSet}} consisting of 
name-value pairs. As such these attributes may be considered weakly-typed properties or annotations, 
as distinct from strongly-typed object data available via other get/set methods.
Not all objects have explicit "name-value pair" \code{\link{AtkAttributeSet}} properties.}
\usage{atkObjectGetAttributes(object)}
\arguments{\item{\verb{object}}{[\code{\link{AtkObject}}]  An \code{\link{AtkObject}}.}}
\details{  Since 1.12}
\value{[\code{\link{AtkAttributeSet}}]  an \code{\link{AtkAttributeSet}} consisting of all explicit properties/annotations applied to 
the object, or an empty set if the object has no name-value pair attributes assigned to it.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
