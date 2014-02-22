\alias{pangoFontDescriptionEqual}
\name{pangoFontDescriptionEqual}
\title{pangoFontDescriptionEqual}
\description{Compares two font descriptions for equality. Two font descriptions
are considered equal if the fonts they describe are provably identical.
This means that their masks do not have to match, as long as other fields
are all the same. (Two font descriptions may result in identical fonts
being loaded, but still compare \code{FALSE}.)}
\usage{pangoFontDescriptionEqual(object, desc2)}
\arguments{
\item{\verb{object}}{[\code{\link{PangoFontDescription}}]  a \code{\link{PangoFontDescription}}}
\item{\verb{desc2}}{[\code{\link{PangoFontDescription}}]  another \code{\link{PangoFontDescription}}}
}
\value{[logical] \code{TRUE} if the two font descriptions are identical,
	 \code{FALSE} otherwise.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
