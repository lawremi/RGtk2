\alias{gtkTooltipsSetTip}
\name{gtkTooltipsSetTip}
\title{gtkTooltipsSetTip}
\description{
Adds a tooltip containing the message \code{tip.text} to the specified \code{\link{GtkWidget}}.
\strong{WARNING: \code{gtk_tooltips_set_tip} has been deprecated since version 2.12 and should not be used in newly-written code. }
}
\usage{gtkTooltipsSetTip(object, widget, tip.text = NULL, tip.private = NULL)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkTooltips}}.}
\item{\verb{widget}}{the \code{\link{GtkWidget}} you wish to associate the tip with.}
\item{\verb{tip.text}}{a string containing the tip itself. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{tip.private}}{a string of any further information that may be useful if the user gets stuck. \emph{[  \acronym{allow-none}  ]}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
