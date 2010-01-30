\alias{gtkLayoutGetHadjustment}
\name{gtkLayoutGetHadjustment}
\title{gtkLayoutGetHadjustment}
\description{This function should only be called after the layout has been
placed in a \verb{\link{GtkScrolledWindow}} or otherwise configured for
scrolling. It returns the \verb{\link{GtkAdjustment}} used for communication
between the horizontal scrollbar and \code{layout}.}
\usage{gtkLayoutGetHadjustment(object)}
\arguments{\item{\verb{object}}{[\verb{\link{GtkLayout}}]  a \verb{\link{GtkLayout}}}}
\details{See \verb{\link{GtkScrolledWindow}}, \verb{\link{GtkScrollbar}}, \verb{\link{GtkAdjustment}} for details.  }
\value{[\verb{\link{GtkAdjustment}}]  horizontal scroll adjustment}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
