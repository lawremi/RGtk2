\alias{gdkWindowSetFunctions}
\name{gdkWindowSetFunctions}
\title{gdkWindowSetFunctions}
\description{This function isn't really good for much. It sets the traditional
Motif window manager hint for which operations the window manager
should allow on a toplevel window. However, few window managers do
anything reliable or interesting with this hint. Many ignore it
entirely.}
\usage{gdkWindowSetFunctions(object, functions)}
\arguments{
\item{\code{object}}{[\code{\link{GdkWindow}}]  a toplevel \code{\link{GdkWindow}}}
\item{\code{functions}}{[\code{\link{GdkWMFunction}}]  bitmask of operations to allow on \code{window}}
}
\details{The \code{functions} argument is the logical OR of values from the
\code{\link{GdkWMFunction}} enumeration. If the bitmask includes \code{GDK_FUNC_ALL},
then the other bits indicate which functions to disable; if
it doesn't include \code{GDK_FUNC_ALL}, it indicates which functions to
enable.  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
