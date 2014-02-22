\alias{pangoFontDescriptionSetGravity}
\name{pangoFontDescriptionSetGravity}
\title{pangoFontDescriptionSetGravity}
\description{Sets the gravity field of a font description. The gravity field
specifies how the glyphs should be rotated.  If \code{gravity} is
\code{PANGO_GRAVITY_AUTO}, this actually unsets the gravity mask on
the font description.}
\usage{pangoFontDescriptionSetGravity(object, gravity)}
\arguments{
\item{\verb{object}}{[\code{\link{PangoFontDescription}}]  a \code{\link{PangoFontDescription}}}
\item{\verb{gravity}}{[\code{\link{PangoGravity}}]  the gravity for the font description.}
}
\details{This function is seldom useful to the user.  Gravity should normally
be set on a \code{\link{PangoContext}}.  
  Since 1.16}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
