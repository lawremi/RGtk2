\alias{gtkScaleGetLayoutOffsets}
\name{gtkScaleGetLayoutOffsets}
\title{gtkScaleGetLayoutOffsets}
\description{Obtains the coordinates where the scale will draw the \code{\link{PangoLayout}}
representing the text in the scale. Remember
when using the \code{\link{PangoLayout}} function you need to convert to
and from pixels using \code{pangoPixels()} or \code{PANGO_SCALE}. }
\usage{gtkScaleGetLayoutOffsets(object)}
\arguments{\item{\code{object}}{[\code{\link{GtkScale}}]  a \code{\link{GtkScale}}}}
\details{If the draw\_value property is \code{FALSE}, the return values are 
undefined.  

  Since  2.4}
\value{
A list containing the following elements:
\item{\code{x}}{[integer]  location to store X offset of layout, or \code{NULL}}
\item{\code{y}}{[integer]  location to store Y offset of layout, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
