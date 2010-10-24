\alias{gtkWindowSetDeletable}
\name{gtkWindowSetDeletable}
\title{gtkWindowSetDeletable}
\description{By default, windows have a close button in the window frame. Some 
window managers allow GTK+ to 
disable this button. If you set the deletable property to \code{FALSE}
using this function, GTK+ will do its best to convince the window
manager not to show a close button. Depending on the system, this
function may not have any effect when called on a window that is
already visible, so you should call it before calling \code{gtkWindowShow()}.}
\usage{gtkWindowSetDeletable(object, setting)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkWindow}}}
\item{\verb{setting}}{\code{TRUE} to decorate the window as deletable}
}
\details{On Windows, this function always works, since there's no window manager
policy involved.
  Since 2.10}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
