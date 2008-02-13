\alias{gtkTreeViewSetTooltipCell}
\name{gtkTreeViewSetTooltipCell}
\title{gtkTreeViewSetTooltipCell}
\description{Sets the tip area of \code{tooltip} to the area \code{path}, \code{column} and \code{cell} have
in common.  For example if \code{path} is \code{NULL} and \code{column} is set, the tip
area will be set to the full area covered by \code{column}.  See also
\code{\link{gtkTooltipsetTipArea}}.}
\usage{gtkTreeViewSetTooltipCell(object, tooltip, path, column, cell)}
\arguments{
\item{\code{object}}{[\code{\link{GtkTreeView}}]  a \code{\link{GtkTreeView}}}
\item{\code{tooltip}}{[\code{\link{GtkTooltip}}]  a \code{\link{GtkTooltip}}}
\item{\code{path}}{[\code{\link{GtkTreePath}}]  a \code{\link{GtkTreePath}} or \code{NULL}}
\item{\code{column}}{[\code{\link{GtkTreeViewColumn}}]  a \code{\link{GtkTreeViewColumn}} or \code{NULL}}
\item{\code{cell}}{[\code{\link{GtkCellRenderer}}]  a \code{\link{GtkCellRendererText}} or \code{NULL}}
}
\details{  Since  2.12}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
