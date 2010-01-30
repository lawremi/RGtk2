\alias{gtkScaleGetLayoutOffsets}
\name{gtkScaleGetLayoutOffsets}
\title{gtkScaleGetLayoutOffsets}
\description{Obtains the coordinates where the scale will draw the 
\verb{\link{PangoLayout}} representing the text in the scale. Remember
when using the \verb{\link{PangoLayout}} function you need to convert to
and from pixels using \code{pangoPixels()} or \verb{PANGO_SCALE}. }
\usage{gtkScaleGetLayoutOffsets(object)}
\arguments{\item{\verb{object}}{[\verb{\link{GtkScale}}]  a \verb{\link{GtkScale}}}}
\details{If the \verb{"draw-value"} property is \code{FALSE}, the return 
values are undefined.  

  Since  2.4}
\value{
A list containing the following elements:
\item{\verb{x}}{[integer]  location to store X offset of layout, or \code{NULL}}
\item{\verb{y}}{[integer]  location to store Y offset of layout, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
