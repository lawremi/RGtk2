\alias{gtkAccelGroupActivate}
\name{gtkAccelGroupActivate}
\title{gtkAccelGroupActivate}
\description{Finds the first accelerator in \code{accel.group} 
that matches \code{accel.key} and \code{accel.mods}, and
activates it.}
\usage{gtkAccelGroupActivate(object, accel.quark, acceleratable, accel.key, 
    accel.mods)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkAccelGroup}}}
\item{\verb{accel.quark}}{the quark for the accelerator name}
\item{\verb{acceleratable}}{the \code{\link{GObject}}, usually a \code{\link{GtkWindow}}, on which
to activate the accelerator.}
\item{\verb{accel.key}}{accelerator keyval from a key event}
\item{\verb{accel.mods}}{keyboard state mask from a key event}
}
\value{[logical] \code{TRUE} if an accelerator was activated and handled this keypress}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
