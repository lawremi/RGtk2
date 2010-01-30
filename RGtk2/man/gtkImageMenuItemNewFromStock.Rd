\alias{gtkImageMenuItemNewFromStock}
\name{gtkImageMenuItemNewFromStock}
\title{gtkImageMenuItemNewFromStock}
\description{Creates a new \verb{\link{GtkImageMenuItem}} containing the image and text from a 
stock item. Some stock ids have preprocessor functions like \verb{GTK_STOCK_OK} 
and \verb{GTK_STOCK_APPLY}.}
\usage{gtkImageMenuItemNewFromStock(stock.id, accel.group, show = TRUE)}
\arguments{
\item{\verb{stock.id}}{[character]  the name of the stock item.}
\item{\verb{accel.group}}{[\verb{\link{GtkAccelGroup}}]  the \verb{\link{GtkAccelGroup}} to add the menu items accelerator to,
  or \code{NULL}.}
}
\details{If you want this menu item to have changeable accelerators, then pass in
\code{NULL} for accel_group. Next call \code{\link{gtkMenuItemSetAccelPath}} with an
appropriate path for the menu item, use \code{\link{gtkStockLookup}} to look up the
standard accelerator for the stock item, and if one is found, call
\code{\link{gtkAccelMapAddEntry}} to register it.  }
\value{[\verb{\link{GtkWidget}}]  a new \verb{\link{GtkImageMenuItem}}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
