\alias{gdkWindowGetCursor}
\name{gdkWindowGetCursor}
\title{gdkWindowGetCursor}
\description{Retrieves a \code{\link{GdkCursor}} pointer for the cursor currently set on the
specified \code{\link{GdkWindow}}, or \code{NULL}.  If the return value is \code{NULL} then
there is no custom cursor set on the specified window, and it is
using the cursor for its parent window.}
\usage{gdkWindowGetCursor(object)}
\arguments{\item{\verb{object}}{a \code{\link{GdkWindow}}}}
\details{Since 2.18}
\value{[\code{\link{GdkCursor}}] a \code{\link{GdkCursor}}, or \code{NULL}. The returned object is owned
by the \code{\link{GdkWindow}} and should not be unreferenced directly. Use
\code{\link{gdkWindowSetCursor}} to unset the cursor of the window}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
