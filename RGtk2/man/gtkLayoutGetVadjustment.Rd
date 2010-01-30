\alias{gtkLayoutGetVadjustment}
\name{gtkLayoutGetVadjustment}
\title{gtkLayoutGetVadjustment}
\description{This function should only be called after the layout has been
placed in a \verb{\link{GtkScrolledWindow}} or otherwise configured for
scrolling. It returns the \verb{\link{GtkAdjustment}} used for communication
between the vertical scrollbar and \code{layout}.}
\usage{gtkLayoutGetVadjustment(object)}
\arguments{\item{\verb{object}}{[\verb{\link{GtkLayout}}]  a \verb{\link{GtkLayout}}}}
\details{See \verb{\link{GtkScrolledWindow}}, \verb{\link{GtkScrollbar}}, \verb{\link{GtkAdjustment}} for details.  }
\value{[\verb{\link{GtkAdjustment}}]  vertical scroll adjustment}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
