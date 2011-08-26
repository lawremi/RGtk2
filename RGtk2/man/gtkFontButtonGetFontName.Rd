\alias{gtkFontButtonGetFontName}
\name{gtkFontButtonGetFontName}
\title{gtkFontButtonGetFontName}
\description{Retrieves the name of the currently selected font. This name includes
style and size information as well. If you want to render something
with the font, use this string with \code{\link{pangoFontDescriptionFromString}} .
If you're interested in peeking certain values (family name,
style, size, weight) just query these properties from the
\code{\link{PangoFontDescription}} object.}
\usage{gtkFontButtonGetFontName(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkFontButton}}}}
\details{Since 2.4}
\value{[character] an internal copy of the font name which must not be freed.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
