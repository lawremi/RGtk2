\alias{gtkAlignmentSet}
\name{gtkAlignmentSet}
\title{gtkAlignmentSet}
\description{Sets the \verb{\link{GtkAlignment}} values.}
\usage{gtkAlignmentSet(object, xalign, yalign, xscale, yscale)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkAlignment}}] a \verb{\link{GtkAlignment}}.}
\item{\verb{xalign}}{[numeric] the horizontal alignment of the child widget, from 0 (left) to 1
(right).}
\item{\verb{yalign}}{[numeric] the vertical alignment of the child widget, from 0 (top) to 1
(bottom).}
\item{\verb{xscale}}{[numeric] the amount that the child widget expands horizontally to fill up
unused space, from 0 to 1.
A value of 0 indicates that the child widget should never expand.
A value of 1 indicates that the child widget will expand to fill all of the
space allocated for the \verb{\link{GtkAlignment}}.}
\item{\verb{yscale}}{[numeric] the amount that the child widget expands vertically to fill up
unused space, from 0 to 1. The values are similar to \code{xscale}.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
