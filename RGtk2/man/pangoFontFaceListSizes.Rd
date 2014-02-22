\alias{pangoFontFaceListSizes}
\name{pangoFontFaceListSizes}
\title{pangoFontFaceListSizes}
\description{List the available sizes for a font. This is only applicable to bitmap
fonts. For scalable fonts, stores \code{NULL} at the location pointed to by
\code{sizes} and 0 at the location pointed to by \code{n.sizes}. The sizes returned
are in Pango units and are sorted in ascending order.}
\usage{pangoFontFaceListSizes(object)}
\arguments{\item{\verb{object}}{[\code{\link{PangoFontFace}}]  a \code{\link{PangoFontFace}}.}}
\details{  Since 1.4}
\value{
A list containing the following elements:
\item{\verb{sizes}}{[integer]  location to store a pointer to a list of int. This list
        should be freed with \code{gFree()}.}
\item{\verb{n.sizes}}{[integer]  location to store the number of elements in \code{sizes}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
