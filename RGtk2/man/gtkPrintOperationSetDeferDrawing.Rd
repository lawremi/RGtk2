\alias{gtkPrintOperationSetDeferDrawing}
\name{gtkPrintOperationSetDeferDrawing}
\title{gtkPrintOperationSetDeferDrawing}
\description{Sets up the \code{\link{GtkPrintOperation}} to wait for calling of
\code{\link{gtkPrintOperationDrawPageFinish}} from application. It can
be used for drawing page in another thread.}
\usage{gtkPrintOperationSetDeferDrawing(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkPrintOperation}}}}
\details{This function must be called in the callback of "draw-page" signal.
  Since 2.16}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
