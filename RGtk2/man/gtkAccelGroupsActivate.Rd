\alias{gtkAccelGroupsActivate}
\name{gtkAccelGroupsActivate}
\title{gtkAccelGroupsActivate}
\description{Finds the first accelerator in any \code{\link{GtkAccelGroup}} attached
to \code{object} that matches \code{accel.key} and \code{accel.mods}, and
activates that accelerator.
If an accelerator was activated and handled this keypress, \code{TRUE}
is returned.}
\usage{gtkAccelGroupsActivate(object, accel.key, accel.mods)}
\arguments{
\item{\code{object}}{[\code{\link{GObject}}]         the \code{\link{GObject}}, usually a \code{\link{GtkWindow}}, on which
                to activate the accelerator.}
\item{\code{accel.key}}{[numeric]      accelerator keyval from a key event}
\item{\code{accel.mods}}{[\code{\link{GdkModifierType}}]     keyboard state mask from a key event}
}
\value{[logical] \code{TRUE} if the accelerator was handled, \code{FALSE} otherwise}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
