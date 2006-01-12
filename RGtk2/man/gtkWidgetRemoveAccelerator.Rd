\alias{gtkWidgetRemoveAccelerator}
\name{gtkWidgetRemoveAccelerator}
\title{gtkWidgetRemoveAccelerator}
\description{Removes an accelerator from \code{widget}, previously installed with
\code{\link{gtkWidgetAddAccelerator}}.}
\usage{gtkWidgetRemoveAccelerator(object, accel.group, accel.key, accel.mods)}
\arguments{
\item{\code{object}}{[\code{\link{GtkWidget}}]        widget to install an accelerator on}
\item{\code{accel.group}}{[\code{\link{GtkAccelGroup}}]   accel group for this widget}
\item{\code{accel.key}}{[numeric]     GDK keyval of the accelerator}
\item{\code{accel.mods}}{[\code{\link{GdkModifierType}}]    modifier key combination of the accelerator}
}
\value{[logical]       whether an accelerator was installed and could be removed}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
