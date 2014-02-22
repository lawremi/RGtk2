\alias{gtkAlignmentNew}
\name{gtkAlignmentNew}
\title{gtkAlignmentNew}
\description{Creates a new \code{\link{GtkAlignment}}.}
\usage{gtkAlignmentNew(xalign = NULL, yalign = NULL, xscale = NULL, 
    yscale = NULL, show = TRUE)}
\arguments{
\item{\verb{xalign}}{the horizontal alignment of the child widget, from 0 (left) to 1
(right).}
\item{\verb{yalign}}{the vertical alignment of the child widget, from 0 (top) to 1
(bottom).}
\item{\verb{xscale}}{the amount that the child widget expands horizontally to fill up
unused space, from 0 to 1.
A value of 0 indicates that the child widget should never expand.
A value of 1 indicates that the child widget will expand to fill all of the
space allocated for the \code{\link{GtkAlignment}}.}
\item{\verb{yscale}}{the amount that the child widget expands vertically to fill up
unused space, from 0 to 1. The values are similar to \code{xscale}.}
}
\value{[\code{\link{GtkWidget}}] the new \code{\link{GtkAlignment}}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
