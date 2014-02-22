\alias{gtkDrawHandle}
\name{gtkDrawHandle}
\title{gtkDrawHandle}
\description{
Draws a handle as used in \code{\link{GtkHandleBox}} and \code{\link{GtkPaned}}.
\strong{WARNING: \code{gtk_draw_handle} has been deprecated since version 2.0 and should not be used in newly-written code. Use \code{\link{gtkPaintHandle}} instead.}
}
\usage{gtkDrawHandle(object, window, state.type, shadow.type, x, y, 
    width, height, orientation)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkStyle}}}
\item{\verb{window}}{a \code{\link{GdkWindow}}}
\item{\verb{state.type}}{a state}
\item{\verb{shadow.type}}{type of shadow to draw}
\item{\verb{x}}{x origin of the handle}
\item{\verb{y}}{y origin of the handle}
\item{\verb{width}}{with of the handle}
\item{\verb{height}}{height of the handle}
\item{\verb{orientation}}{the orientation of the handle}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
