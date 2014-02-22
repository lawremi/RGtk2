\alias{pangoFontDescriptionSetStyle}
\name{pangoFontDescriptionSetStyle}
\title{pangoFontDescriptionSetStyle}
\description{Sets the style field of a \code{\link{PangoFontDescription}}. The
\code{\link{PangoStyle}} enumeration describes whether the font is slanted and
the manner in which it is slanted; it can be either
\verb{PANGO_STYLE_NORMAL}, \verb{PANGO_STYLE_ITALIC}, or \verb{PANGO_STYLE_OBLIQUE}.
Most fonts will either have a italic style or an oblique
style, but not both, and font matching in Pango will
match italic specifications with oblique fonts and vice-versa
if an exact match is not found.}
\usage{pangoFontDescriptionSetStyle(object, style)}
\arguments{
\item{\verb{object}}{[\code{\link{PangoFontDescription}}]  a \code{\link{PangoFontDescription}}}
\item{\verb{style}}{[\code{\link{PangoStyle}}]  the style for the font description}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
