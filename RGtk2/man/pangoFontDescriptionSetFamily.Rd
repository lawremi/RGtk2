\alias{pangoFontDescriptionSetFamily}
\name{pangoFontDescriptionSetFamily}
\title{pangoFontDescriptionSetFamily}
\description{Sets the family name field of a font description. The family
name represents a family of related font styles, and will
resolve to a particular \verb{\link{PangoFontFamily}}. In some uses of
\verb{\link{PangoFontDescription}}, it is also possible to use a comma
separated list of family names for this field.}
\usage{pangoFontDescriptionSetFamily(object, family)}
\arguments{
\item{\verb{object}}{[\verb{\link{PangoFontDescription}}]  a \verb{\link{PangoFontDescription}}.}
\item{\verb{family}}{[char]  a string representing the family name.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
