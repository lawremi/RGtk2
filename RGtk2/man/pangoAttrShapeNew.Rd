\alias{pangoAttrShapeNew}
\name{pangoAttrShapeNew}
\title{pangoAttrShapeNew}
\description{Create a new shape attribute. A shape is used to impose a
particular ink and logical rectangle on the result of shaping a
particular glyph. This might be used, for instance, for
embedding a picture or a widget inside a \code{\link{PangoLayout}}.}
\usage{pangoAttrShapeNew(ink.rect, logical.rect)}
\arguments{
\item{\verb{ink.rect}}{[\code{\link{PangoRectangle}}]      ink rectangle to assign to each character}
\item{\verb{logical.rect}}{[\code{\link{PangoRectangle}}]  logical rectangle to assign to each character}
}
\value{[\code{\link{PangoAttribute}}]  the newly allocated \code{\link{PangoAttribute}},}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
