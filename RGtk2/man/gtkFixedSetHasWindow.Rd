\alias{gtkFixedSetHasWindow}
\name{gtkFixedSetHasWindow}
\title{gtkFixedSetHasWindow}
\description{
Sets whether a \code{\link{GtkFixed}} widget is created with a separate
\code{\link{GdkWindow}} for \code{widget->window} or not. (By default, it will be
created with no separate \code{\link{GdkWindow}}). This function must be called
while the \code{\link{GtkFixed}} is not realized, for instance, immediately after the
window is created.
\strong{WARNING: \code{gtk_fixed_set_has_window} has been deprecated since version 2.20 and should not be used in newly-written code. Use \code{\link{gtkWidgetSetHasWindow}} instead.}
}
\usage{gtkFixedSetHasWindow(object, has.window)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkFixed}}}
\item{\verb{has.window}}{\code{TRUE} if a separate window should be created}
}
\details{This function was added to provide an easy migration path for
older applications which may expect \code{\link{GtkFixed}} to have a separate window.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
