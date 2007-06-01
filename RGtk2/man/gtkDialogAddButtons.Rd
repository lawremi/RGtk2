\alias{gtkDialogAddButtons}
\name{gtkDialogAddButtons}
\title{gtkDialogAddButtons}
\description{Adds more buttons, same as calling \code{\link{gtkDialogAddButton}}
repeatedly.  The variable argument list should be \code{NULL}-terminated
as with \code{\link{gtkDialogNewWithButtons}}. Each button must have both
text and response ID.}
\usage{gtkDialogAddButtons(object, ...)}
\arguments{\item{\code{...}}{[character]  button text or stock ID}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
