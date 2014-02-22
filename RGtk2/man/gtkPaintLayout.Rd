\alias{gtkPaintLayout}
\name{gtkPaintLayout}
\title{gtkPaintLayout}
\description{Draws a layout on \code{window} using the given parameters.}
\usage{gtkPaintLayout(object, window, state.type, use.text, area = NULL, 
    widget = NULL, detail = NULL, x, y, layout)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkStyle}}}
\item{\verb{window}}{a \code{\link{GdkWindow}}}
\item{\verb{state.type}}{a state}
\item{\verb{use.text}}{whether to use the text or foreground
graphics context of \code{style}}
\item{\verb{area}}{clip rectangle, or \code{NULL} if the
output should not be clipped. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{widget}}{the widget. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{detail}}{a style detail. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{x}}{x origin}
\item{\verb{y}}{y origin}
\item{\verb{layout}}{the layout to draw}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
