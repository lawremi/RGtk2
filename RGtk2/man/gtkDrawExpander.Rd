\alias{gtkDrawExpander}
\name{gtkDrawExpander}
\title{gtkDrawExpander}
\description{
Draws an expander as used in \verb{\link{GtkTreeView}}.
\strong{WARNING: \code{gtk_draw_expander} is deprecated and should not be used in newly-written code. Use \code{\link{gtkPaintExpander}} instead.}
}
\usage{gtkDrawExpander(object, window, state.type, x, y, is.open)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkStyle}}]  a \verb{\link{GtkStyle}}}
\item{\verb{window}}{[\verb{\link{GdkWindow}}]  a \verb{\link{GdkWindow}}}
\item{\verb{state.type}}{[\code{\link{GtkStateType}}]  a state}
\item{\verb{x}}{[integer]  the x position to draw the expander at}
\item{\verb{y}}{[integer]  the y position to draw the expander at}
\item{\verb{is.open}}{[\code{\link{GtkExpanderStyle}}]  the style to draw the expander in}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
