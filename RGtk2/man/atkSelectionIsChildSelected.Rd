\alias{atkSelectionIsChildSelected}
\name{atkSelectionIsChildSelected}
\title{atkSelectionIsChildSelected}
\description{Determines if the current child of this object is selected
Note: callers should not rely on \code{NULL} or on a zero value for
indication of whether AtkSelectionIface is implemented, they should
use type checking/interface checking functions or the
\code{atkGetAccessibleValue()} convenience method.}
\usage{atkSelectionIsChildSelected(object, i)}
\arguments{
\item{\verb{object}}{[\code{\link{AtkSelection}}]  a \code{\link{GObject}} instance that implements AtkSelectionIface}
\item{\verb{i}}{[integer]  a \verb{integer} specifying the child index.}
}
\value{[logical]  a gboolean representing the specified child is selected, or 0
if \code{selection} does not implement this interface.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
