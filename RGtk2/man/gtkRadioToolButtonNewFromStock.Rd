\alias{gtkRadioToolButtonNewFromStock}
\name{gtkRadioToolButtonNewFromStock}
\title{gtkRadioToolButtonNewFromStock}
\description{Creates a new \code{\link{GtkRadioToolButton}}, adding it to \code{group}. 
The new \code{\link{GtkRadioToolButton}} will contain an icon and label from the
stock item indicated by \code{stock.id}.}
\usage{gtkRadioToolButtonNewFromStock(group = NULL, stock.id, show = TRUE)}
\arguments{
\item{\verb{group}}{an existing radio button group, or \code{NULL} if you are creating a new group. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{stock.id}}{the name of a stock item}
}
\details{Since 2.4}
\value{[\code{\link{GtkToolItem}}] The new \verb{GtkRadioToolItem}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
