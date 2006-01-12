\alias{gdkWindowInvalidateRect}
\name{gdkWindowInvalidateRect}
\title{gdkWindowInvalidateRect}
\description{A convenience wrapper around \code{\link{gdkWindowInvalidateRegion}} which
invalidates a rectangular region. See
\code{\link{gdkWindowInvalidateRegion}} for details.}
\usage{gdkWindowInvalidateRect(object, rect = NULL, invalidate.children)}
\arguments{
\item{\code{object}}{[\code{\link{GdkWindow}}]  a \code{\link{GdkWindow}}}
\item{\code{rect}}{[\code{\link{GdkRectangle}}]  rectangle to invalidate}
\item{\code{invalidate.children}}{[logical]  whether to also invalidate child windows}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
