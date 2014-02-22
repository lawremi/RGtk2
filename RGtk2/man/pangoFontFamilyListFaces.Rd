\alias{pangoFontFamilyListFaces}
\name{pangoFontFamilyListFaces}
\title{pangoFontFamilyListFaces}
\description{Lists the different font faces that make up \code{family}. The faces
in a family share a common design, but differ in slant, weight,
width and other aspects.}
\usage{pangoFontFamilyListFaces(object)}
\arguments{\item{\verb{object}}{[\code{\link{PangoFontFamily}}]  a \code{\link{PangoFontFamily}}}}
\value{
A list containing the following elements:
\item{\verb{faces}}{[\code{\link{PangoFontFace}}]  location to store a list of pointers to \code{\link{PangoFontFace}}
  objects, or \code{NULL}. This list should be freed with \code{gFree()}
  when it is no longer needed.}
\item{\verb{n.faces}}{[integer]  location to store number of elements in \code{faces}.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
