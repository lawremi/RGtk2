\alias{gtkRadioToolButtonNewWithStockFromWidget}
\name{gtkRadioToolButtonNewWithStockFromWidget}
\title{gtkRadioToolButtonNewWithStockFromWidget}
\description{Creates a new \code{\link{GtkRadioToolButton}} adding it to the same group as \code{group}.
The new \code{\link{GtkRadioToolButton}} will contain an icon and label from the
stock item indicated by \code{stock.id}.}
\usage{gtkRadioToolButtonNewWithStockFromWidget(group = NULL, stock.id, show = TRUE)}
\arguments{
\item{\code{group}}{[\code{\link{GtkRadioToolButton}}]  An existing \code{\link{GtkRadioToolButton}}.}
\item{\code{stock.id}}{[character]  the name of a stock item }
}
\details{  Since  2.4}
\value{[\code{\link{GtkToolItem}}]  A new \code{\link{GtkRadioToolButton}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
