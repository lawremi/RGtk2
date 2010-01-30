\alias{pangoFontDescriptionCopyStatic}
\name{pangoFontDescriptionCopyStatic}
\title{pangoFontDescriptionCopyStatic}
\description{Like \code{\link{pangoFontDescriptionCopy}}, but only a shallow copy is made
of the family name and other allocated fields. This is meant to be used
when the copy is only needed temporarily.}
\usage{pangoFontDescriptionCopyStatic(object)}
\arguments{\item{\verb{object}}{[\verb{\link{PangoFontDescription}}]  a \verb{\link{PangoFontDescription}}, may be \code{NULL}}}
\value{[\verb{\link{PangoFontDescription}}]  the newly allocated \verb{\link{PangoFontDescription}}, or \code{NULL}
              if \code{desc} was \code{NULL}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
