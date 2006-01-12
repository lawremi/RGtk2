\alias{gtkImageNewFromStock}
\name{gtkImageNewFromStock}
\title{gtkImageNewFromStock}
\description{Creates a \code{\link{GtkImage}} displaying a stock icon. Sample stock icon
names are \code{GTK_STOCK_OPEN}, \code{GTK_STOCK_EXIT}. Sample stock sizes
are \code{GTK_ICON_SIZE_MENU}, \code{GTK_ICON_SIZE_SMALL_TOOLBAR}. If the stock
icon name isn't known, the image will be empty.
You can register your own stock icon names, see
\code{\link{gtkIconFactoryAddDefault}} and \code{\link{gtkIconFactoryAdd}}.}
\usage{gtkImageNewFromStock(stock.id, size)}
\arguments{
\item{\code{stock.id}}{[character]  a stock icon name}
\item{\code{size}}{[\code{\link{GtkIconSize}}]  a stock icon size}
}
\value{[\code{\link{GtkWidget}}]  a new \code{\link{GtkImage}} displaying the stock icon}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
