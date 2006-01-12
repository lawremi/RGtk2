\alias{pangoFontDescriptionEqual}
\name{pangoFontDescriptionEqual}
\title{pangoFontDescriptionEqual}
\description{Compares two font descriptions for equality.}
\usage{pangoFontDescriptionEqual(object, desc2)}
\arguments{
\item{\code{object}}{[\code{\link{PangoFontDescription}}]  a \code{\link{PangoFontDescription}}}
\item{\code{desc2}}{[\code{\link{PangoFontDescription}}]  another \code{\link{PangoFontDescription}}}
}
\value{[logical]  \code{TRUE} if the two font descriptions are proveably
              identical. (Two font descriptions may result in
              identical fonts being loaded, but still compare
               \code{FALSE}.)}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
