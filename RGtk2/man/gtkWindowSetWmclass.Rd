\alias{gtkWindowSetWmclass}
\name{gtkWindowSetWmclass}
\title{gtkWindowSetWmclass}
\description{Don't use this function. It sets the X Window System "class" and
"name" hints for a window.  According to the ICCCM, you should
always set these to the same value for all windows in an
application, and GTK+ sets them to that value by default, so calling
this function is sort of pointless. However, you may want to call
\code{\link{gtkWindowSetRole}} on each window in your application, for the
benefit of the session manager. Setting the role allows the window
manager to restore window positions when loading a saved session.}
\usage{gtkWindowSetWmclass(object, wmclass.name, wmclass.class)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkWindow}}}
\item{\verb{wmclass.name}}{window name hint}
\item{\verb{wmclass.class}}{window class hint}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
