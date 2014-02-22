\alias{pangoFontDescriptionHash}
\name{pangoFontDescriptionHash}
\title{pangoFontDescriptionHash}
\description{Computes a hash of a \code{\link{PangoFontDescription}} structure suitable
to be used, for example, as an argument to \code{gHashTableNew()}.
The hash value is independent of \code{desc->mask}.}
\usage{pangoFontDescriptionHash(object)}
\arguments{\item{\verb{object}}{[\code{\link{PangoFontDescription}}]  a \code{\link{PangoFontDescription}}}}
\value{[numeric]  the hash value.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
