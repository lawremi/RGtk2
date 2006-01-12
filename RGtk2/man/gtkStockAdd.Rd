\alias{gtkStockAdd}
\name{gtkStockAdd}
\title{gtkStockAdd}
\description{Registers each of the stock items in \code{items}. If an item already
exists with the same stock ID as one of the \code{items}, the old item
gets replaced. Use
\code{\link{gtkStockAddStatic}} if \code{items} is persistent and GTK+ need not
copy the list.}
\usage{gtkStockAdd(items)}
\arguments{\item{\code{items}}{[\code{\link{GtkStockItem}}]  a \code{\link{GtkStockItem}} or list of items}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
