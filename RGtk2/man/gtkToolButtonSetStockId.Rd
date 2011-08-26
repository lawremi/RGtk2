\alias{gtkToolButtonSetStockId}
\name{gtkToolButtonSetStockId}
\title{gtkToolButtonSetStockId}
\description{Sets the name of the stock item. See \code{\link{gtkToolButtonNewFromStock}}.
The stock_id property only has an effect if not
overridden by non-\code{NULL} "label" and "icon_widget" properties.}
\usage{gtkToolButtonSetStockId(object, stock.id = NULL)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkToolButton}}}
\item{\verb{stock.id}}{a name of a stock item, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
}
\details{Since 2.4}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
