\alias{gtkLayoutNew}
\name{gtkLayoutNew}
\title{gtkLayoutNew}
\description{Creates a new \code{\link{GtkLayout}}. Unless you have a specific adjustment
you'd like the layout to use for scrolling, pass \code{NULL} for
\code{hadjustment} and \code{vadjustment}.}
\usage{gtkLayoutNew(hadjustment = NULL, vadjustment = NULL, show = TRUE)}
\arguments{
\item{\verb{hadjustment}}{horizontal scroll adjustment, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{vadjustment}}{vertical scroll adjustment, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
}
\value{[\code{\link{GtkWidget}}] a new \code{\link{GtkLayout}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
