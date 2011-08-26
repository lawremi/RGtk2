\alias{gdkWindowInvalidateRect}
\name{gdkWindowInvalidateRect}
\title{gdkWindowInvalidateRect}
\description{A convenience wrapper around \code{\link{gdkWindowInvalidateRegion}} which
invalidates a rectangular region. See
\code{\link{gdkWindowInvalidateRegion}} for details.}
\usage{gdkWindowInvalidateRect(object, rect = NULL, invalidate.children)}
\arguments{
\item{\verb{object}}{a \code{\link{GdkWindow}}}
\item{\verb{rect}}{rectangle to invalidate or \code{NULL} to invalidate the whole
window. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{invalidate.children}}{whether to also invalidate child windows}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
