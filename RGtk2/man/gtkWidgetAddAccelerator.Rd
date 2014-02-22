\alias{gtkWidgetAddAccelerator}
\name{gtkWidgetAddAccelerator}
\title{gtkWidgetAddAccelerator}
\description{Installs an accelerator for this \code{widget} in \code{accel.group} that causes
\code{accel.signal} to be emitted if the accelerator is activated.
The \code{accel.group} needs to be added to the widget's toplevel via
\code{\link{gtkWindowAddAccelGroup}}, and the signal must be of type \code{G_RUN_ACTION}.
Accelerators added through this function are not user changeable during
runtime. If you want to support accelerators that can be changed by the
user, use \code{\link{gtkAccelMapAddEntry}} and \code{\link{gtkWidgetSetAccelPath}} or
\code{\link{gtkMenuItemSetAccelPath}} instead.}
\usage{gtkWidgetAddAccelerator(object, accel.signal, accel.group, accel.key, 
    accel.mods, accel.flags)}
\arguments{
\item{\verb{object}}{widget to install an accelerator on}
\item{\verb{accel.signal}}{widget signal to emit on accelerator activation}
\item{\verb{accel.group}}{accel group for this widget, added to its toplevel}
\item{\verb{accel.key}}{GDK keyval of the accelerator}
\item{\verb{accel.mods}}{modifier key combination of the accelerator}
\item{\verb{accel.flags}}{flag accelerators, e.g. \code{GTK_ACCEL_VISIBLE}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
