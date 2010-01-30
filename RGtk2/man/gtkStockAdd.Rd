\alias{gtkStockAdd}
\name{gtkStockAdd}
\title{gtkStockAdd}
\description{Registers each of the stock items in \code{items}. If an item already
exists with the same stock ID as one of the \code{items}, the old item
gets replaced. The stock items are copied. Use
\code{\link{gtkStockAddStatic}} if \code{items} is persistent and GTK+ need not
copy the list.}
\usage{gtkStockAdd(items)}
\arguments{\item{\verb{items}}{[\verb{\link{GtkStockItem}}]  a \verb{\link{GtkStockItem}} or list of items}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
