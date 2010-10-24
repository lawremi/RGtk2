\alias{gtkWidgetRemoveAccelerator}
\name{gtkWidgetRemoveAccelerator}
\title{gtkWidgetRemoveAccelerator}
\description{Removes an accelerator from \code{widget}, previously installed with
\code{\link{gtkWidgetAddAccelerator}}.}
\usage{gtkWidgetRemoveAccelerator(object, accel.group, accel.key, accel.mods)}
\arguments{
\item{\verb{object}}{widget to install an accelerator on}
\item{\verb{accel.group}}{accel group for this widget}
\item{\verb{accel.key}}{GDK keyval of the accelerator}
\item{\verb{accel.mods}}{modifier key combination of the accelerator}
}
\value{[logical] whether an accelerator was installed and could be removed}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
