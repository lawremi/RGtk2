\alias{pangoFontDescriptionCopyStatic}
\name{pangoFontDescriptionCopyStatic}
\title{pangoFontDescriptionCopyStatic}
\description{Like \code{\link{pangoFontDescriptionCopy}}, but only a shallow copy is made
of the family name and other allocated fields. The result can only
be used until \code{desc} is modified or freed. This is meant to be used
when the copy is only needed temporarily.}
\usage{pangoFontDescriptionCopyStatic(object)}
\arguments{\item{\verb{object}}{[\code{\link{PangoFontDescription}}]  a \code{\link{PangoFontDescription}}, may be \code{NULL}}}
\value{[\code{\link{PangoFontDescription}}]  the newly allocated \code{\link{PangoFontDescription}}, or \code{NULL}
              if \code{desc} was \code{NULL}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
