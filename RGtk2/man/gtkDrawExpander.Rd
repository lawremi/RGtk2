\alias{gtkDrawExpander}
\name{gtkDrawExpander}
\title{gtkDrawExpander}
\description{
Draws an expander as used in \code{\link{GtkTreeView}}.
\strong{WARNING: \code{gtk_draw_expander} is deprecated and should not be used in newly-written code. Use \code{\link{gtkPaintExpander}} instead.  
Draws an expander as used in \code{\link{GtkTreeView}}.  }
}
\usage{gtkDrawExpander(object, window, state.type, x, y, is.open)}
\arguments{
\item{\code{object}}{[\code{\link{GtkStyle}}]  a \code{\link{GtkStyle}}}
\item{\code{window}}{[\code{\link{GdkWindow}}]  a \code{\link{GdkWindow}}}
\item{\code{state.type}}{[\code{\link{GtkStateType}}]  a state}
\item{\code{x}}{[integer]  the x position to draw the expander at}
\item{\code{y}}{[integer]  the y position to draw the expander at}
\item{\code{is.open}}{[\code{\link{GtkExpanderStyle}}]  the style to draw the expander in}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
