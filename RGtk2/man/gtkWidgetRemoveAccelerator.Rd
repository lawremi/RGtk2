\alias{gtkWidgetRemoveAccelerator}
\name{gtkWidgetRemoveAccelerator}
\title{gtkWidgetRemoveAccelerator}
\description{Removes an accelerator from \code{widget}, previously installed with
\code{\link{gtkWidgetAddAccelerator}}.}
\usage{gtkWidgetRemoveAccelerator(object, accel.group, accel.key, accel.mods)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkWidget}}]        widget to install an accelerator on}
\item{\verb{accel.group}}{[\verb{\link{GtkAccelGroup}}]   accel group for this widget}
\item{\verb{accel.key}}{[numeric]     GDK keyval of the accelerator}
\item{\verb{accel.mods}}{[\code{\link{GdkModifierType}}]    modifier key combination of the accelerator}
}
\value{[logical]       whether an accelerator was installed and could be removed}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
