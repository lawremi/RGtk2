\alias{gtkPrintOperationDrawPageFinish}
\name{gtkPrintOperationDrawPageFinish}
\title{gtkPrintOperationDrawPageFinish}
\description{Signalize that drawing of particular page is complete.}
\usage{gtkPrintOperationDrawPageFinish(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkPrintOperation}}}}
\details{It is called after completion of page drawing (e.g. drawing in another
thread).
If \code{\link{gtkPrintOperationSetDeferDrawing}} was called before, then this function
has to be called by application. In another case it is called by the library
itself.
  Since 2.16}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
