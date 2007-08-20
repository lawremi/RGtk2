\alias{gtkTooltipsSetTip}
\name{gtkTooltipsSetTip}
\title{gtkTooltipsSetTip}
\description{
Adds a tooltip containing the message \code{tip.text} to the specified \code{\link{GtkWidget}}. 
\strong{WARNING: \code{gtk_tooltips_set_tip} has been deprecated since version 2.12 and should not be used in newly-written code. }
}
\usage{gtkTooltipsSetTip(object, widget, tip.text = NULL, tip.private = NULL)}
\arguments{
\item{\code{object}}{[\code{\link{GtkTooltips}}] a \code{\link{GtkTooltips}}.}
\item{\code{widget}}{[\code{\link{GtkWidget}}] the \code{\link{GtkWidget}} you wish to associate the tip with.}
\item{\code{tip.text}}{[character] a string containing the tip itself.}
\item{\code{tip.private}}{[character] a string of any further information that may be useful if the user gets stuck.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
