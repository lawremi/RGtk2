\alias{gtkEntryGetIconStock}
\name{gtkEntryGetIconStock}
\title{gtkEntryGetIconStock}
\description{Retrieves the stock id used for the icon, or \code{NULL} if there is
no icon or if the icon was set by some other method (e.g., by
pixbuf, icon name or gicon).}
\usage{gtkEntryGetIconStock(object, icon.pos)}
\arguments{
\item{\verb{object}}{A \code{\link{GtkEntry}}}
\item{\verb{icon.pos}}{Icon position}
}
\details{Since 2.16}
\value{[character] A stock id, or \code{NULL} if no icon is set or if the icon
wasn't set from a stock id}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
