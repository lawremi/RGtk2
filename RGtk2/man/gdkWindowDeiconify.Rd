\alias{gdkWindowDeiconify}
\name{gdkWindowDeiconify}
\title{gdkWindowDeiconify}
\description{Attempt to deiconify (unminimize) \code{window}. On X11 the window manager may
choose to ignore the request to deiconify. When using GTK+,
use \code{\link{gtkWindowDeiconify}} instead of the \code{\link{GdkWindow}} variant. Or better yet,
you probably want to use \code{\link{gtkWindowPresent}}, which raises the window, focuses it,
unminimizes it, and puts it on the current desktop.}
\usage{gdkWindowDeiconify(object)}
\arguments{\item{\verb{object}}{a toplevel \code{\link{GdkWindow}}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
