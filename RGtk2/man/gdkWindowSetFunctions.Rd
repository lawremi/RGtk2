\alias{gdkWindowSetFunctions}
\name{gdkWindowSetFunctions}
\title{gdkWindowSetFunctions}
\description{Sets hints about the window management functions to make available
via buttons on the window frame.}
\usage{gdkWindowSetFunctions(object, functions)}
\arguments{
\item{\verb{object}}{a toplevel \code{\link{GdkWindow}}}
\item{\verb{functions}}{bitmask of operations to allow on \code{window}}
}
\details{On the X backend, this function sets the traditional Motif window 
manager hint for this purpose. However, few window managers do
anything reliable or interesting with this hint. Many ignore it
entirely.
  
The \code{functions} argument is the logical OR of values from the
\code{\link{GdkWMFunction}} enumeration. If the bitmask includes \verb{GDK_FUNC_ALL},
then the other bits indicate which functions to disable; if
it doesn't include \verb{GDK_FUNC_ALL}, it indicates which functions to
enable.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
