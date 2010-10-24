\alias{gtkTooltipsDisable}
\name{gtkTooltipsDisable}
\title{gtkTooltipsDisable}
\description{
Causes all tooltips in \code{tooltips} to become inactive. Any widgets that have tips associated with that group will no longer display their tips until they are enabled again with \code{\link{gtkTooltipsEnable}}.
\strong{WARNING: \code{gtk_tooltips_disable} has been deprecated since version 2.12 and should not be used in newly-written code. }
}
\usage{gtkTooltipsDisable(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkTooltips}}.}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
