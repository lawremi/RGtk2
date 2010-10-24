\alias{gtkFixedGetHasWindow}
\name{gtkFixedGetHasWindow}
\title{gtkFixedGetHasWindow}
\description{
Gets whether the \code{\link{GtkFixed}} has its own \code{\link{GdkWindow}}.
See \code{\link{gtkFixedSetHasWindow}}.
\strong{WARNING: \code{gtk_fixed_get_has_window} has been deprecated since version 2.20 and should not be used in newly-written code. Use \code{\link{gtkWidgetGetHasWindow}} instead.}
}
\usage{gtkFixedGetHasWindow(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkWidget}}}}
\value{[logical] \code{TRUE} if \code{fixed} has its own window.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
