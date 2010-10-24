\alias{atkObjectRefAccessibleChild}
\name{atkObjectRefAccessibleChild}
\title{atkObjectRefAccessibleChild}
\description{Gets a reference to the specified accessible child of the object.
The accessible children are 0-based so the first accessible child is
at index 0, the second at index 1 and so on.}
\usage{atkObjectRefAccessibleChild(object, i)}
\arguments{
\item{\verb{object}}{[\code{\link{AtkObject}}]  an \code{\link{AtkObject}}}
\item{\verb{i}}{[integer]  a gint representing the position of the child, starting from 0}
}
\value{[\code{\link{AtkObject}}]  an \code{\link{AtkObject}} representing the specified accessible child
of the accessible.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
