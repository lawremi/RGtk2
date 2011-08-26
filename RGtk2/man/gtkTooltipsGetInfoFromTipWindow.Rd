\alias{gtkTooltipsGetInfoFromTipWindow}
\name{gtkTooltipsGetInfoFromTipWindow}
\title{gtkTooltipsGetInfoFromTipWindow}
\description{
Determines the tooltips and the widget they belong to from the window in 
which they are displayed. 
\strong{WARNING: \code{gtk_tooltips_get_info_from_tip_window} has been deprecated since version 2.12 and should not be used in newly-written code. }
}
\usage{gtkTooltipsGetInfoFromTipWindow(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkWindow}}}}
\details{This function is mostly intended for use by accessibility technologies;
applications should have little use for it.
  Since 2.4}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} if \code{tip.window} is displaying tooltips, otherwise \code{FALSE}.}
\item{\verb{tooltips}}{the return location for the tooltips which are displayed
in \code{tip.window}, or \code{NULL}}
\item{\verb{current.widget}}{the return location for the widget whose tooltips
are displayed, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
