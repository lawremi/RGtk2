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
\item{\verb{object}}{a \code{\link{GtkWidget}}}
\item{\verb{accel.path}}{path used to look up the accelerator. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{accel.group}}{a \code{\link{GtkAccelGroup}}. \emph{[  \acronym{allow-none}  ]}}
}
\details{This function is a low level function that would most likely
be used by a menu creation system like \code{\link{GtkUIManager}}. If you
use \code{\link{GtkUIManager}}, setting up accelerator paths will be done
automatically.
  
Even when you you aren't using \code{\link{GtkUIManager}}, if you only want to
set up accelerators on menu items \code{\link{gtkMenuItemSetAccelPath}}
provides a somewhat more convenient interface.
  
Note that \code{accel.path} string will be stored in a \code{\link{GQuark}}. Therefore, if you
pass a static string, you can save some memory by interning it first with 
\code{gInternStaticString()}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
