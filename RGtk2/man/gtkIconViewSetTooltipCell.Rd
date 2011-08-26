\alias{gtkIconViewSetTooltipCell}
\name{gtkIconViewSetTooltipCell}
\title{gtkIconViewSetTooltipCell}
\description{Sets the tip area of \code{tooltip} to the area which \code{cell} occupies in
the item pointed to by \code{path}. See also \code{\link{gtkTooltipSetTipArea}}.}
\usage{gtkIconViewSetTooltipCell(object, tooltip, path, cell)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkIconView}}}
\item{\verb{tooltip}}{a \code{\link{GtkTooltip}}}
\item{\verb{path}}{a \code{\link{GtkTreePath}}}
\item{\verb{cell}}{a \code{\link{GtkCellRenderer}} or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
}
\details{See also \code{\link{gtkIconViewSetTooltipColumn}} for a simpler alternative.
  Since 2.12}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
