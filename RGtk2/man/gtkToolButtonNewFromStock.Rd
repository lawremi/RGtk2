\alias{gtkToolButtonNewFromStock}
\name{gtkToolButtonNewFromStock}
\title{gtkToolButtonNewFromStock}
\description{Creates a new \verb{\link{GtkToolButton}} containing the image and text from a
stock item. Some stock ids have preprocessor functions like \verb{GTK_STOCK_OK}
and \verb{GTK_STOCK_APPLY}.}
\usage{gtkToolButtonNewFromStock(stock.id)}
\arguments{\item{\verb{stock.id}}{[character]  the name of the stock item }}
\details{It is an error if \code{stock.id} is not a name of a stock item.  

  Since  2.4}
\value{[\verb{\link{GtkToolItem}}]  A new \verb{\link{GtkToolButton}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
