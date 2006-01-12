\alias{gtkPaintExpander}
\name{gtkPaintExpander}
\title{gtkPaintExpander}
\description{Draws an expander as used in \code{\link{GtkTreeView}}. \code{x} and \code{y} specify the
center the expander. The size of the expander is determined by the
"expander-size" style property of \code{widget}.  (If widget is not
specified or doesn't have an "expander-size" property, an
unspecified default size will be used, since the caller doesn't
have sufficient information to position the expander, this is
likely not useful.) The expander is expander_size pixels tall
in the collapsed position and expander_size pixels wide in the
expanded position.}
\usage{gtkPaintExpander(object, window, state.type, area = NULL, widget = NULL, detail = NULL, x, y, expander.style)}
\arguments{
\item{\code{object}}{[\code{\link{GtkStyle}}]  a \code{\link{GtkStyle}}}
\item{\code{window}}{[\code{\link{GdkWindow}}]  a \code{\link{GdkWindow}}}
\item{\code{state.type}}{[\code{\link{GtkStateType}}]  a state}
\item{\code{area}}{[\code{\link{GdkRectangle}}]  clip rectangle, or \code{NULL} if the
       output should not be clipped}
\item{\code{widget}}{[\code{\link{GtkWidget}}]  the widget (may be \code{NULL})}
\item{\code{detail}}{[character]  a style detail (may be \code{NULL})}
\item{\code{x}}{[integer]  the x position to draw the expander at}
\item{\code{y}}{[integer]  the y position to draw the expander at}
\item{\code{expander.style}}{[\code{\link{GtkExpanderStyle}}]  the style to draw the expander in; determines
  whether the expander is collapsed, expanded, or in an
  intermediate state.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
