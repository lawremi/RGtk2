\alias{cairoVersion}
\name{cairoVersion}
\title{cairoVersion}
\description{Returns the version of the cairo library encoded in a single
integer as per \code{CAIRO_VERSION_ENCODE}. The encoding ensures that
later versions compare greater than earlier versions.}
\usage{cairoVersion()}
\details{A run-time comparison to check that cairo's version is greater than
or equal to version X.Y.Z could be performed as follows:
  \preformatted{
# This function is not that useful in R.
# Instead, please use cairoVersionString() with compareVersion().
}  
See also \code{\link{cairoVersionString}} as well as the compile-time
equivalents \code{CAIRO_VERSION} and \code{CAIRO_VERSION_STRING}.  }
\value{[integer]  the encoded version.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
