\alias{gtkPaintHandle}
\name{gtkPaintHandle}
\title{gtkPaintHandle}
\description{Draws a handle as used in \code{\link{GtkHandleBox}} and \code{\link{GtkPaned}}.}
\usage{gtkPaintHandle(object, window, state.type, shadow.type, area = NULL, 
    widget = NULL, detail = NULL, x, y, width, height, orientation)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkStyle}}}
\item{\verb{window}}{a \code{\link{GdkWindow}}}
\item{\verb{state.type}}{a state}
\item{\verb{shadow.type}}{type of shadow to draw}
\item{\verb{area}}{clip rectangle, or \code{NULL} if the
output should not be clipped. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{widget}}{the widget. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{detail}}{a style detail. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{x}}{x origin of the handle}
\item{\verb{y}}{y origin of the handle}
\item{\verb{width}}{with of the handle}
\item{\verb{height}}{height of the handle}
\item{\verb{orientation}}{the orientation of the handle}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
