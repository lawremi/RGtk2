\alias{gtkLayoutGetVadjustment}
\name{gtkLayoutGetVadjustment}
\title{gtkLayoutGetVadjustment}
\description{This function should only be called after the layout has been
placed in a \code{\link{GtkScrolledWindow}} or otherwise configured for
scrolling. It returns the \code{\link{GtkAdjustment}} used for communication
between the vertical scrollbar and \code{layout}.}
\usage{gtkLayoutGetVadjustment(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkLayout}}}}
\details{See \code{\link{GtkScrolledWindow}}, \code{\link{GtkScrollbar}}, \code{\link{GtkAdjustment}} for details.}
\value{[\code{\link{GtkAdjustment}}] vertical scroll adjustment}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
