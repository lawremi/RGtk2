\alias{gtkEntrySetIconFromStock}
\name{gtkEntrySetIconFromStock}
\title{gtkEntrySetIconFromStock}
\description{Sets the icon shown in the entry at the specified position from
a stock image.}
\usage{gtkEntrySetIconFromStock(object, icon.pos, stock.id = NULL)}
\arguments{
\item{\verb{object}}{A \code{\link{GtkEntry}}}
\item{\verb{icon.pos}}{Icon position}
\item{\verb{stock.id}}{The name of the stock item, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
}
\details{If \code{stock.id} is \code{NULL}, no icon will be shown in the specified position.
  Since 2.16}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
