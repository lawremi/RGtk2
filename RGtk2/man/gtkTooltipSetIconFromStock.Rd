\alias{gtkTooltipSetIconFromStock}
\name{gtkTooltipSetIconFromStock}
\title{gtkTooltipSetIconFromStock}
\description{Sets the icon of the tooltip (which is in front of the text) to be
the stock item indicated by \code{stock.id} with the size indicated
by \code{size}.  If \code{stock.id} is \code{NULL}, the image will be hidden.}
\usage{gtkTooltipSetIconFromStock(object, stock.id, size)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkTooltip}}]  a \verb{\link{GtkTooltip}}}
\item{\verb{stock.id}}{[character]  a stock icon name, or \code{NULL}}
\item{\verb{size}}{[\code{\link{GtkIconSize}}]  a stock icon size}
}
\details{  Since  2.12}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
