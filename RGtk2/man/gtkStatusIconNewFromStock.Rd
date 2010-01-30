\alias{gtkStatusIconNewFromStock}
\name{gtkStatusIconNewFromStock}
\title{gtkStatusIconNewFromStock}
\description{Creates a status icon displaying a stock icon. Sample stock icon
names are \verb{GTK_STOCK_OPEN}, \verb{GTK_STOCK_QUIT}. You can register your 
own stock icon names, see \code{\link{gtkIconFactoryAddDefault}} and 
\code{\link{gtkIconFactoryAdd}}.}
\usage{gtkStatusIconNewFromStock(stock.id)}
\arguments{\item{\verb{stock.id}}{[character]  a stock icon id}}
\details{  Since  2.10}
\value{[\verb{\link{GtkStatusIcon}}]  a new \verb{\link{GtkStatusIcon}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
