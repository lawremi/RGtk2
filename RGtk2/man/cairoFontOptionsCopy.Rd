\alias{cairoFontOptionsCopy}
\name{cairoFontOptionsCopy}
\title{cairoFontOptionsCopy}
\description{Allocates a new font options object copying the option values from
 \code{original}.}
\usage{cairoFontOptionsCopy(original)}
\arguments{\item{\verb{original}}{[\code{\link{CairoFontOptions}}]  a \code{\link{CairoFontOptions}}}}
\value{[\code{\link{CairoFontOptions}}]  a newly allocated \code{\link{CairoFontOptions}}. This function always returns a
  valid pointer; if memory cannot be allocated, then a special
  error object is returned where all operations on the object do nothing.
  You can check for this with \code{\link{cairoFontOptionsStatus}}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
