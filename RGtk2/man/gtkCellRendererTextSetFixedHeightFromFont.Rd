\alias{gtkCellRendererTextSetFixedHeightFromFont}
\name{gtkCellRendererTextSetFixedHeightFromFont}
\title{gtkCellRendererTextSetFixedHeightFromFont}
\description{Sets the height of a renderer to explicitly be determined by the "font" and
"y_pad" property set on it.  Further changes in these properties do not
affect the height, so they must be accompanied by a subsequent call to this
function.  Using this function is unflexible, and should really only be used
if calculating the size of a cell is too slow (ie, a massive number of cells
displayed).  If \code{number.of.rows} is -1, then the fixed height is unset, and
the height is determined by the properties again.}
\usage{gtkCellRendererTextSetFixedHeightFromFont(object, number.of.rows)}
\arguments{
\item{\verb{object}}{A \code{\link{GtkCellRendererText}}}
\item{\verb{number.of.rows}}{Number of rows of text each cell renderer is allocated, or -1}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
