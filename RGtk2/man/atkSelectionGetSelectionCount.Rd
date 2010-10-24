\alias{atkSelectionGetSelectionCount}
\name{atkSelectionGetSelectionCount}
\title{atkSelectionGetSelectionCount}
\description{Gets the number of accessible children currently selected.
Note: callers should not rely on \code{NULL} or on a zero value for
indication of whether AtkSelectionIface is implemented, they should
use type checking/interface checking functions or the
\code{atkGetAccessibleValue()} convenience method.}
\usage{atkSelectionGetSelectionCount(object)}
\arguments{\item{\verb{object}}{[\code{\link{AtkSelection}}]  a \code{\link{GObject}} instance that implements AtkSelectionIface}}
\value{[integer]  a gint representing the number of items selected, or 0
if \code{selection} does not implement this interface.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
