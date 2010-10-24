\alias{atkSelectionRemoveSelection}
\name{atkSelectionRemoveSelection}
\title{atkSelectionRemoveSelection}
\description{Removes the specified child of the object from the object's selection.}
\usage{atkSelectionRemoveSelection(object, i)}
\arguments{
\item{\verb{object}}{[\code{\link{AtkSelection}}]  a \code{\link{GObject}} instance that implements AtkSelectionIface}
\item{\verb{i}}{[integer]  a \verb{integer} specifying the index in the selection set.  (e.g. the
ith selection as opposed to the ith child).}
}
\value{[logical]  TRUE if success, FALSE otherwise.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
