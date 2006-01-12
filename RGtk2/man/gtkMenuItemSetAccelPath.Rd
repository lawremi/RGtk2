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
\item{\code{object}}{[\code{\link{GtkMenuItem}}]   a valid \code{\link{GtkMenuItem}}}
\item{\code{accel.path}}{[character]  accelerator path, corresponding to this menu item's
             functionality, or \code{NULL} to unset the current path.}
}
\details{This function is basically a convenience wrapper that handles calling
\code{\link{gtkWidgetSetAccelPath}} with the appropriate accelerator group for
the menu item.
  
Note that you do need to set an accelerator on the parent menu with
\code{\link{gtkMenuSetAccelGroup}} for this to work.  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
