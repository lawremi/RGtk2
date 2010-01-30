\alias{gtkImageNewFromStock}
\name{gtkImageNewFromStock}
\title{gtkImageNewFromStock}
\description{Creates a \verb{\link{GtkImage}} displaying a stock icon. Sample stock icon
names are \verb{GTK_STOCK_OPEN}, \verb{GTK_STOCK_QUIT}. Sample stock sizes
are \verb{GTK_ICON_SIZE_MENU}, \verb{GTK_ICON_SIZE_SMALL_TOOLBAR}. If the stock
icon name isn't known, the image will be empty.
You can register your own stock icon names, see
\code{\link{gtkIconFactoryAddDefault}} and \code{\link{gtkIconFactoryAdd}}.}
\usage{gtkImageNewFromStock(stock.id, size, show = TRUE)}
\arguments{
\item{\verb{stock.id}}{[character]  a stock icon name}
\item{\verb{size}}{[\code{\link{GtkIconSize}}]  a stock icon size}
}
\value{[\verb{\link{GtkWidget}}]  a new \verb{\link{GtkImage}} displaying the stock icon}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
