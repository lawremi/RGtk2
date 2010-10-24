\alias{gtkDrawExpander}
\name{gtkDrawExpander}
\title{gtkDrawExpander}
\description{
Draws an expander as used in \code{\link{GtkTreeView}}.
\strong{WARNING: \code{gtk_draw_expander} has been deprecated since version 2.0 and should not be used in newly-written code. Use \code{\link{gtkPaintExpander}} instead.}
}
\usage{gtkDrawExpander(object, window, state.type, x, y, is.open)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkStyle}}}
\item{\verb{window}}{a \code{\link{GdkWindow}}}
\item{\verb{state.type}}{a state}
\item{\verb{x}}{the x position to draw the expander at}
\item{\verb{y}}{the y position to draw the expander at}
\item{\verb{is.open}}{the style to draw the expander in}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
