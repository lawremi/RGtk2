\alias{gtkStatusIconGetX11WindowId}
\name{gtkStatusIconGetX11WindowId}
\title{gtkStatusIconGetX11WindowId}
\description{This function is only useful on the X11/freedesktop.org platform.
It returns a window ID for the widget in the underlying
status icon implementation.  This is useful for the Galago 
notification service, which can send a window ID in the protocol 
in order for the server to position notification windows 
pointing to a status icon reliably.}
\usage{gtkStatusIconGetX11WindowId(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkStatusIcon}}}}
\details{This function is not intended for other use cases which are
more likely to be met by one of the non-X11 specific methods, such
as \code{\link{gtkStatusIconPositionMenu}}.
  Since 2.14}
\value{[numeric] An 32 bit unsigned integer identifier for the
underlying X11 Window}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
