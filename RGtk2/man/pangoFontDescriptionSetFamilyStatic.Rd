\alias{pangoFontDescriptionSetFamilyStatic}
\name{pangoFontDescriptionSetFamilyStatic}
\title{pangoFontDescriptionSetFamilyStatic}
\description{Like \code{\link{pangoFontDescriptionSetFamily}}, except that no
copy of \code{family} is made. This function can be used if
\code{family} is a static string such as a C string literal, or
if \code{desc} is only needed temporarily.}
\usage{pangoFontDescriptionSetFamilyStatic(object, family)}
\arguments{
\item{\code{object}}{[\code{\link{PangoFontDescription}}]  a \code{\link{PangoFontDescription}}}
\item{\code{family}}{[char]  a string representing the family name.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
