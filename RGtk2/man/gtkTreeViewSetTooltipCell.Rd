\alias{gtkTreeViewSetTooltipCell}
\name{gtkTreeViewSetTooltipCell}
\title{gtkTreeViewSetTooltipCell}
\description{Sets the tip area of \code{tooltip} to the area \code{path}, \code{column} and \code{cell} have
in common.  For example if \code{path} is \code{NULL} and \code{column} is set, the tip
area will be set to the full area covered by \code{column}.  See also
\code{\link{gtkTooltipSetTipArea}}.}
\usage{gtkTreeViewSetTooltipCell(object, tooltip, path, column, cell)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkTreeView}}}
\item{\verb{tooltip}}{a \code{\link{GtkTooltip}}}
\item{\verb{path}}{a \code{\link{GtkTreePath}} or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{column}}{a \code{\link{GtkTreeViewColumn}} or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{cell}}{a \code{\link{GtkCellRenderer}} or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
}
\details{Note that if \code{path} is not specified and \code{cell} is set and part of a column
containing the expander, the tooltip might not show and hide at the correct
position.  In such cases \code{path} must be set to the current node under the
mouse cursor for this function to operate correctly.
  
See also \code{\link{gtkTreeViewSetTooltipColumn}} for a simpler alternative.
  Since 2.12}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
