\alias{gdkWindowShow}
\name{gdkWindowShow}
\title{gdkWindowShow}
\description{Like \code{\link{gdkWindowShowUnraised}}, but also raises the window to the
top of the window stack (moves the window to the front of the
Z-order).}
\usage{gdkWindowShow(object)}
\arguments{\item{\verb{object}}{a \code{\link{GdkWindow}}}}
\details{This function maps a window so it's visible onscreen. Its opposite
is \code{\link{gdkWindowHide}}.
  
When implementing a \code{\link{GtkWidget}}, you should call this function on the widget's
\code{\link{GdkWindow}} as part of the "map" method.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
