\alias{gdkFontsetLoad}
\name{gdkFontsetLoad}
\title{gdkFontsetLoad}
\description{
Loads a fontset.
\strong{WARNING: \code{gdk_fontset_load} is deprecated and should not be used in newly-written code.}
}
\usage{gdkFontsetLoad(fontset.name)}
\arguments{\item{\verb{fontset.name}}{a comma-separated list of XLFDs describing
the component fonts of the fontset to load.}}
\details{The fontset may be newly loaded or looked up in a cache. 
You should make no assumptions about the initial reference count.}
\value{[\code{\link{GdkFont}}] a \code{\link{GdkFont}}, or \code{NULL} if the fontset could not be loaded.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
