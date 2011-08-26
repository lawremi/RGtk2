\alias{gtkAccelGroupsActivate}
\name{gtkAccelGroupsActivate}
\title{gtkAccelGroupsActivate}
\description{Finds the first accelerator in any \code{\link{GtkAccelGroup}} attached
to \code{object} that matches \code{accel.key} and \code{accel.mods}, and
activates that accelerator.}
\usage{gtkAccelGroupsActivate(object, accel.key, accel.mods)}
\arguments{
\item{\verb{object}}{the \code{\link{GObject}}, usually a \code{\link{GtkWindow}}, on which
to activate the accelerator.}
\item{\verb{accel.key}}{accelerator keyval from a key event}
\item{\verb{accel.mods}}{keyboard state mask from a key event}
}
\value{[logical] \code{TRUE} if an accelerator was activated and handled this keypress}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
