\alias{gtkTooltipsForceWindow}
\name{gtkTooltipsForceWindow}
\title{gtkTooltipsForceWindow}
\description{
Ensures that the window used for displaying the given \code{tooltips} is created.
\strong{WARNING: \code{gtk_tooltips_force_window} has been deprecated since version 2.12 and should not be used in newly-written code. }
}
\usage{gtkTooltipsForceWindow(object)}
\arguments{\item{\verb{object}}{a \verb{GtkToolTips}}}
\details{Applications should never have to call this function, since GTK+ takes
care of this.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
