\alias{pangoAttrShapeNewWithData}
\name{pangoAttrShapeNewWithData}
\title{pangoAttrShapeNewWithData}
\description{Like \code{\link{pangoAttrShapeNew}}, but a user data pointer is also
provided; this pointer can be accessed when later
rendering the glyph.}
\usage{pangoAttrShapeNewWithData(ink.rect, logical.rect, data)}
\arguments{
\item{\verb{ink.rect}}{[\code{\link{PangoRectangle}}]      ink rectangle to assign to each character}
\item{\verb{logical.rect}}{[\code{\link{PangoRectangle}}]  logical rectangle to assign to each character}
\item{\verb{data}}{[R object]          user data pointer}
}
\details{  Since 1.8}
\value{[\code{\link{PangoAttribute}}]  the newly allocated \code{\link{PangoAttribute}},}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
