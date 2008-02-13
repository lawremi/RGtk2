\alias{gtkTooltipsetIconFromStock}
\name{gtkTooltipsetIconFromStock}
\title{gtkTooltipsetIconFromStock}
\description{Sets the icon of the tooltip (which is in front of the text) to be
the stock item indicated by \code{stock.id} with the size indicated
by \code{size}.  If \code{stock.id} is \code{NULL}, the image will be hidden.}
\usage{gtkTooltipsetIconFromStock(object, stock.id, size)}
\arguments{
\item{\code{object}}{[\code{\link{GtkTooltip}}]  a \code{\link{GtkTooltip}}}
\item{\code{stock.id}}{[character]  a stock icon name, or \code{NULL}}
\item{\code{size}}{[\code{\link{GtkIconSize}}]  a stock icon size}
}
\details{  Since  2.12}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
