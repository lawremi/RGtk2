\alias{pangoFontDescriptionSetFamilyStatic}
\name{pangoFontDescriptionSetFamilyStatic}
\title{pangoFontDescriptionSetFamilyStatic}
\description{Like \code{\link{pangoFontDescriptionSetFamily}}, except that no
copy of \code{family} is made. This function can be used if
\code{family} is a static string such as a C string literal, or
if \code{desc} is only needed temporarily.}
\usage{pangoFontDescriptionSetFamilyStatic(object, family)}
\arguments{
\item{\verb{object}}{[\verb{\link{PangoFontDescription}}]  a \verb{\link{PangoFontDescription}}}
\item{\verb{family}}{[char]  a string representing the family name.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
