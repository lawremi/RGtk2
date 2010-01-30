\alias{pangoFontDescriptionHash}
\name{pangoFontDescriptionHash}
\title{pangoFontDescriptionHash}
\description{Computes a hash of a \verb{\link{PangoFontDescription}} structure suitable
to be used, for example, as an argument to \code{gHashTableNew()}.
The hash value is independent of \code{desc->mask}.}
\usage{pangoFontDescriptionHash(object)}
\arguments{\item{\verb{object}}{[\verb{\link{PangoFontDescription}}]  a \verb{\link{PangoFontDescription}}}}
\value{[numeric]  the hash value.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
