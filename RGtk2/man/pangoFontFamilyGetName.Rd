\alias{pangoFontFamilyGetName}
\name{pangoFontFamilyGetName}
\title{pangoFontFamilyGetName}
\description{Gets the name of the family. The name is unique among all
fonts for the font backend and can be used in a \code{\link{PangoFontDescription}}
to specify that a face from this family is desired.}
\usage{pangoFontFamilyGetName(object)}
\arguments{\item{\verb{object}}{[\code{\link{PangoFontFamily}}]  a \code{\link{PangoFontFamily}}}}
\value{[char]  the name of the family. This string is owned
  by the family object and must not be modified or freed.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
