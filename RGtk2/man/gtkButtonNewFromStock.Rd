\alias{gtkButtonNewFromStock}
\name{gtkButtonNewFromStock}
\title{gtkButtonNewFromStock}
\description{Creates a new \code{\link{GtkButton}} containing the image and text from a stock item.
Some stock ids have preprocessor functions like \verb{GTK_STOCK_OK} and
\verb{GTK_STOCK_APPLY}.}
\usage{gtkButtonNewFromStock(stock.id, show = TRUE)}
\arguments{\item{\verb{stock.id}}{the name of the stock item}}
\details{If \code{stock.id} is unknown, then it will be treated as a mnemonic
label (as for \code{\link{gtkButtonNewWithMnemonic}}).}
\value{[\code{\link{GtkWidget}}] a new \code{\link{GtkButton}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
