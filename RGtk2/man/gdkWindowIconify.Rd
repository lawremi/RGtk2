\alias{gdkWindowIconify}
\name{gdkWindowIconify}
\title{gdkWindowIconify}
\description{Asks to iconify (minimize) \code{window}. The window manager may choose
to ignore the request, but normally will honor it. Using
\code{\link{gtkWindowIconify}} is preferred, if you have a \code{\link{GtkWindow}} widget.}
\usage{gdkWindowIconify(object)}
\arguments{\item{\verb{object}}{a toplevel \code{\link{GdkWindow}}}}
\details{This function only makes sense when \code{window} is a toplevel window.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
