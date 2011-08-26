\alias{gtkClipboardSetCanStore}
\name{gtkClipboardSetCanStore}
\title{gtkClipboardSetCanStore}
\description{Hints that the clipboard data should be stored somewhere when the
application exits or when \code{\link{gtkClipboardStore}} is called.}
\usage{gtkClipboardSetCanStore(object, targets)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkClipboard}}}
\item{\verb{targets}}{array containing information about which forms should be stored
or \code{NULL} to indicate that all forms should be stored.}
}
\details{This value is reset when the clipboard owner changes.
Where the clipboard data is stored is platform dependent,
see \code{\link{gdkDisplayStoreClipboard}} for more information.
  Since 2.6}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
