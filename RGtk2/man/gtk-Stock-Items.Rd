\alias{gtk-Stock-Items}
\alias{GtkStockItem}
\name{gtk-Stock-Items}
\title{Stock Items}
\description{Prebuilt common menu/toolbar items and corresponding icons}
\section{Methods and Functions}{
\code{\link{gtkStockAdd}(items)}\cr
\code{\link{gtkStockAddStatic}(items)}\cr
\code{\link{gtkStockItemCopy}(object)}\cr
\code{\link{gtkStockListIds}()}\cr
\code{\link{gtkStockLookup}(stock.id)}\cr
\code{\link{gtkStockSetTranslateFunc}(domain, func, data)}\cr
}
\section{Detailed Description}{Stock items represent commonly-used menu or toolbar items such as
"Open" or "Exit". Each stock item is identified by a stock ID;
stock IDs are just strings, but functions such as \verb{GTK_STOCK_OPEN} are
provided to avoid typing mistakes in the strings.
Applications can register their own stock items in addition to those
built-in to GTK+.
  
Each stock ID can be associated with a \code{\link{GtkStockItem}}, which contains
the user-visible label, keyboard accelerator, and translation domain
of the menu or toolbar item; and/or with an icon stored in a
\code{\link{GtkIconFactory}}. See GtkIconFactory for
more information on stock icons. The connection between a
\code{\link{GtkStockItem}} and stock icons is purely conventional (by virtue of
using the same stock ID); it's possible to register a stock item but
no icon, and vice versa. Stock icons may have a RTL variant which gets
used for right-to-left locales.}
\section{Structures}{\describe{\item{\verb{GtkStockItem}}{
\emph{undocumented
}
\strong{\verb{GtkStockItem} is a \link{transparent-type}.}

\describe{
\item{\verb{stockId}}{[character] }
\item{\verb{label}}{[character] }
\item{\verb{modifier}}{[\code{\link{GdkModifierType}}] }
\item{\verb{keyval}}{[numeric] }
\item{\verb{translationDomain}}{[character] }
}

}}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/gtk2-Stock-Items.html}}
\note{Please see the reference for a detailed list of the stock items}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
