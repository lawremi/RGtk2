\alias{gtkToggleToolButtonNewFromStock}
\name{gtkToggleToolButtonNewFromStock}
\title{gtkToggleToolButtonNewFromStock}
\description{Creates a new \code{\link{GtkToggleToolButton}} containing the image and text from a
stock item. Some stock ids have preprocessor functions like \verb{GTK_STOCK_OK}
and \verb{GTK_STOCK_APPLY}.}
\usage{gtkToggleToolButtonNewFromStock(stock.id)}
\arguments{\item{\verb{stock.id}}{the name of the stock item}}
\details{It is an error if \code{stock.id} is not a name of a stock item.
  Since 2.4}
\value{[\code{\link{GtkToolItem}}] A new \code{\link{GtkToggleToolButton}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
