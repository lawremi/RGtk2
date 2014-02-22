\alias{gtkPaintExtension}
\name{gtkPaintExtension}
\title{gtkPaintExtension}
\description{Draws an extension, i.e. a notebook tab.}
\usage{gtkPaintExtension(object, window, state.type, shadow.type, area = NULL, 
    widget = NULL, detail = NULL, x, y, width, height, gap.side)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkStyle}}}
\item{\verb{window}}{a \code{\link{GdkWindow}}}
\item{\verb{state.type}}{a state}
\item{\verb{shadow.type}}{type of shadow to draw}
\item{\verb{area}}{clip rectangle, or \code{NULL} if the
output should not be clipped. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{widget}}{the widget. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{detail}}{a style detail. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{x}}{x origin of the extension}
\item{\verb{y}}{y origin of the extension}
\item{\verb{width}}{width of the extension}
\item{\verb{height}}{width of the extension}
\item{\verb{gap.side}}{the side on to which the extension is attached}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
