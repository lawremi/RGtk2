\alias{gtkEditableGetSelectionBounds}
\name{gtkEditableGetSelectionBounds}
\title{gtkEditableGetSelectionBounds}
\description{Gets the current selection bounds, if there is a selection.}
\usage{gtkEditableGetSelectionBounds(object)}
\arguments{\item{\code{object}}{[\code{\link{GtkEditable}}] a \code{\link{GtkEditable}} widget.}}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} if there is a selection.}
\item{\code{start}}{[integer] location to store the starting position, or \code{NULL}.}
\item{\code{end}}{[integer] location to store the end position, or \code{NULL}.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
