\alias{gdkFontsetLoadForDisplay}
\name{gdkFontsetLoadForDisplay}
\title{gdkFontsetLoadForDisplay}
\description{
Loads a fontset for use on \code{display}.
\strong{WARNING: \code{gdk_fontset_load_for_display} is deprecated and should not be used in newly-written code.}
}
\usage{gdkFontsetLoadForDisplay(display, fontset.name)}
\arguments{
\item{\verb{display}}{a \code{\link{GdkDisplay}}}
\item{\verb{fontset.name}}{a comma-separated list of XLFDs describing
the component fonts of the fontset to load.}
}
\details{The fontset may be newly loaded or looked up in a cache. 
You should make no assumptions about the initial reference count.
  Since 2.2}
\value{[\code{\link{GdkFont}}] a \code{\link{GdkFont}}, or \code{NULL} if the fontset could not be loaded.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
