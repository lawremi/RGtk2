\alias{gdkPixbufFormatGetLicense}
\name{gdkPixbufFormatGetLicense}
\title{gdkPixbufFormatGetLicense}
\description{Returns information about the license of the image loader for the format. The
returned string should be a shorthand for a wellknown license, e.g. "LGPL",
"GPL", "QPL", "GPL/QPL", or "other" to indicate some other license.}
\usage{gdkPixbufFormatGetLicense(object)}
\arguments{\item{\verb{object}}{a \code{\link{GdkPixbufFormat}}}}
\details{Since 2.6}
\value{[character] a string describing the license of \code{format}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
