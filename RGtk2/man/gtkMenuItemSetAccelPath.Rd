\alias{gtkMenuItemSetAccelPath}
\name{gtkMenuItemSetAccelPath}
\title{gtkMenuItemSetAccelPath}
\description{Set the accelerator path on \code{menu.item}, through which runtime changes of the
menu item's accelerator caused by the user can be identified and saved to
persistant storage (see \code{\link{gtkAccelMapSave}} on this).
To setup a default accelerator for this menu item, call
\code{\link{gtkAccelMapAddEntry}} with the same \code{accel.path}.
See also \code{\link{gtkAccelMapAddEntry}} on the specifics of accelerator paths,
and \code{\link{gtkMenuSetAccelPath}} for a more convenient variant of this function.}
\usage{gtkMenuItemSetAccelPath(object, accel.path)}
\arguments{
\item{\verb{object}}{a valid \code{\link{GtkMenuItem}}}
\item{\verb{accel.path}}{accelerator path, corresponding to this menu item's
functionality, or \code{NULL} to unset the current path. \emph{[  \acronym{allow-none}  ]}}
}
\details{This function is basically a convenience wrapper that handles calling
\code{\link{gtkWidgetSetAccelPath}} with the appropriate accelerator group for
the menu item.
  
Note that you do need to set an accelerator on the parent menu with
\code{\link{gtkMenuSetAccelGroup}} for this to work.
  
Note that \code{accel.path} string will be stored in a \code{\link{GQuark}}. Therefore, if you
pass a static string, you can save some memory by interning it first with 
\code{gInternStaticString()}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
