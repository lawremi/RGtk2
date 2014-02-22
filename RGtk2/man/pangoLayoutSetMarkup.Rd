\alias{pangoLayoutSetMarkup}
\name{pangoLayoutSetMarkup}
\title{pangoLayoutSetMarkup}
\description{Same as \code{\link{pangoLayoutSetMarkupWithAccel}}, but
the markup text isn't scanned for accelerators.}
\usage{pangoLayoutSetMarkup(object, markup, length = -1)}
\arguments{
\item{\verb{object}}{[\code{\link{PangoLayout}}]  a \code{\link{PangoLayout}}}
\item{\verb{markup}}{[char]  marked-up text}
\item{\verb{length}}{[integer]  length of marked-up text in bytes, or -1 if \code{markup} is
nul-terminated}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
