\alias{gtkImageNewFromStock}
\name{gtkImageNewFromStock}
\title{gtkImageNewFromStock}
\description{Creates a \code{\link{GtkImage}} displaying a stock icon. Sample stock icon
names are \verb{GTK_STOCK_OPEN}, \verb{GTK_STOCK_QUIT}. Sample stock sizes
are \verb{GTK_ICON_SIZE_MENU}, \verb{GTK_ICON_SIZE_SMALL_TOOLBAR}. If the stock
icon name isn't known, the image will be empty.
You can register your own stock icon names, see
\code{\link{gtkIconFactoryAddDefault}} and \code{\link{gtkIconFactoryAdd}}.}
\usage{gtkImageNewFromStock(stock.id, size, show = TRUE)}
\arguments{
\item{\verb{stock.id}}{a stock icon name}
\item{\verb{size}}{a stock icon size. \emph{[  \acronym{type}   int]}}
}
\value{[\code{\link{GtkWidget}}] a new \code{\link{GtkImage}} displaying the stock icon}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
