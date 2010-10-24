\alias{gtkWindowSetDecorated}
\name{gtkWindowSetDecorated}
\title{gtkWindowSetDecorated}
\description{By default, windows are decorated with a title bar, resize
controls, etc.  Some window
managers allow GTK+ to disable these decorations, creating a
borderless window. If you set the decorated property to \code{FALSE}
using this function, GTK+ will do its best to convince the window
manager not to decorate the window. Depending on the system, this
function may not have any effect when called on a window that is
already visible, so you should call it before calling \code{gtkWindowShow()}.}
\usage{gtkWindowSetDecorated(object, setting)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkWindow}}}
\item{\verb{setting}}{\code{TRUE} to decorate the window}
}
\details{On Windows, this function always works, since there's no window manager
policy involved.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
