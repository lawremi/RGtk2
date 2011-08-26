\alias{gtkScaleGetLayoutOffsets}
\name{gtkScaleGetLayoutOffsets}
\title{gtkScaleGetLayoutOffsets}
\description{Obtains the coordinates where the scale will draw the 
\code{\link{PangoLayout}} representing the text in the scale. Remember
when using the \code{\link{PangoLayout}} function you need to convert to
and from pixels using \code{pangoPixels()} or \verb{PANGO_SCALE}. }
\usage{gtkScaleGetLayoutOffsets(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkScale}}}}
\details{If the \verb{"draw-value"} property is \code{FALSE}, the return 
values are undefined.
  Since 2.4}
\value{
A list containing the following elements:
\item{\verb{x}}{location to store X offset of layout, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{y}}{location to store Y offset of layout, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
