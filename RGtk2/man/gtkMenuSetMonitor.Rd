\alias{gtkMenuSetMonitor}
\name{gtkMenuSetMonitor}
\title{gtkMenuSetMonitor}
\description{Informs GTK+ on which monitor a menu should be popped up. 
See \code{\link{gdkScreenGetMonitorGeometry}}.}
\usage{gtkMenuSetMonitor(object, monitor.num)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkMenu}}}
\item{\verb{monitor.num}}{the number of the monitor on which the menu should
be popped up}
}
\details{This function should be called from a \code{\link{GtkMenuPositionFunc}} if the
menu should not appear on the same monitor as the pointer. This 
information can't be reliably inferred from the coordinates returned
by a \code{\link{GtkMenuPositionFunc}}, since, for very long menus, these coordinates 
may extend beyond the monitor boundaries or even the screen boundaries.
  Since 2.4}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
