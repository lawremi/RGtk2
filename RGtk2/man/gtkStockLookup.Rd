\alias{gtkStockLookup}
\name{gtkStockLookup}
\title{gtkStockLookup}
\description{Fills \code{item} with the registered values for \code{stock.id}, returning \code{TRUE}
if \code{stock.id} was known.}
\usage{gtkStockLookup(stock.id)}
\arguments{\item{\code{stock.id}}{[character]  a stock item name}}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} if \code{item} was initialized}
\item{\code{item}}{[\code{\link{GtkStockItem}}]  stock item to initialize with values}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
