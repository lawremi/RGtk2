\alias{gtkFixedSetHasWindow}
\name{gtkFixedSetHasWindow}
\title{gtkFixedSetHasWindow}
\description{Sets whether a \verb{\link{GtkFixed}} widget is created with a separate
\verb{\link{GdkWindow}} for \code{widget->window} or not. (By default, it will be
created with no separate \verb{\link{GdkWindow}}). This function must be called
while the \verb{\link{GtkFixed}} is not realized, for instance, immediately after the
window is created.}
\usage{gtkFixedSetHasWindow(object, has.window)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkFixed}}]  a \verb{\link{GtkFixed}}}
\item{\verb{has.window}}{[logical] \code{TRUE} if a separate window should be created}
}
\details{This function was added to provide an easy migration path for
older applications which may expect \verb{\link{GtkFixed}} to have a separate window.  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
