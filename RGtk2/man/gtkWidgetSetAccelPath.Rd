\alias{gtkWidgetSetAccelPath}
\name{gtkWidgetSetAccelPath}
\title{gtkWidgetSetAccelPath}
\description{Given an accelerator group, \code{accel.group}, and an accelerator path,
\code{accel.path}, sets up an accelerator in \code{accel.group} so whenever the
key binding that is defined for \code{accel.path} is pressed, \code{widget}
will be activated.  This removes any accelerators (for any
accelerator group) installed by previous calls to
\code{\link{gtkWidgetSetAccelPath}}. Associating accelerators with
paths allows them to be modified by the user and the modifications
to be saved for future use. (See \code{\link{gtkAccelMapSave}}.)}
\usage{gtkWidgetSetAccelPath(object, accel.path, accel.group)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkWidget}}]  a \verb{\link{GtkWidget}}}
\item{\verb{accel.path}}{[character]  path used to look up the accelerator}
\item{\verb{accel.group}}{[\verb{\link{GtkAccelGroup}}]  a \verb{\link{GtkAccelGroup}}.}
}
\details{This function is a low level function that would most likely
be used by a menu creation system like \verb{\link{GtkUIManager}}. If you
use \verb{\link{GtkUIManager}}, setting up accelerator paths will be done
automatically.
  
Even when you you aren't using \verb{\link{GtkUIManager}}, if you only want to
set up accelerators on menu items \code{\link{gtkMenuItemSetAccelPath}}
provides a somewhat more convenient interface.  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
