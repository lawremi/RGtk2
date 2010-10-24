\alias{atkSelectionRefSelection}
\name{atkSelectionRefSelection}
\title{atkSelectionRefSelection}
\description{Gets a reference to the accessible object representing the specified 
selected child of the object.
Note: callers should not rely on \code{NULL} or on a zero value for
indication of whether AtkSelectionIface is implemented, they should
use type checking/interface checking functions or the
\code{atkGetAccessibleValue()} convenience method.}
\usage{atkSelectionRefSelection(object, i)}
\arguments{
\item{\verb{object}}{[\code{\link{AtkSelection}}]  a \code{\link{GObject}} instance that implements AtkSelectionIface}
\item{\verb{i}}{[integer]  a \verb{integer} specifying the index in the selection set.  (e.g. the
ith selection as opposed to the ith child).}
}
\value{[\code{\link{AtkObject}}]  an \code{\link{AtkObject}} representing the selected accessible , or \code{NULL}
if \code{selection} does not implement this interface.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
