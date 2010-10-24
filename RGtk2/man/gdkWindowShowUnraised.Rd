\alias{gdkWindowShowUnraised}
\name{gdkWindowShowUnraised}
\title{gdkWindowShowUnraised}
\description{Shows a \code{\link{GdkWindow}} onscreen, but does not modify its stacking
order. In contrast, \code{\link{gdkWindowShow}} will raise the window
to the top of the window stack.}
\usage{gdkWindowShowUnraised(object)}
\arguments{\item{\verb{object}}{a \code{\link{GdkWindow}}}}
\details{On the X11 platform, in Xlib terms, this function calls
\code{xmapwindow()} (it also updates some internal GDK state, which means
that you can't really use \code{xmapwindow()} directly on a GDK window).}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
