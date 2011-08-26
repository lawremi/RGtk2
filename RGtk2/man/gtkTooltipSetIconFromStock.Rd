\alias{gtkTooltipSetIconFromStock}
\name{gtkTooltipSetIconFromStock}
\title{gtkTooltipSetIconFromStock}
\description{Sets the icon of the tooltip (which is in front of the text) to be
the stock item indicated by \code{stock.id} with the size indicated
by \code{size}.  If \code{stock.id} is \code{NULL}, the image will be hidden.}
\usage{gtkTooltipSetIconFromStock(object, stock.id, size)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkTooltip}}}
\item{\verb{stock.id}}{a stock id, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{size}}{a stock icon size. \emph{[  \acronym{type}   int]}}
}
\details{Since 2.12}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
