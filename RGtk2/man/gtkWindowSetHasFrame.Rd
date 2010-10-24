\alias{gtkWindowSetHasFrame}
\name{gtkWindowSetHasFrame}
\title{gtkWindowSetHasFrame}
\description{(Note: this is a special-purpose function for the framebuffer port,
 that causes GTK+ to draw its own window border. For most applications,
 you want \code{\link{gtkWindowSetDecorated}} instead, which tells the window
 manager whether to draw the window border.)}
\usage{gtkWindowSetHasFrame(object, setting)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkWindow}}}
\item{\verb{setting}}{a boolean}
}
\details{If this function is called on a window with setting of \code{TRUE}, before
it is realized or showed, it will have a "frame" window around
\code{window->window}, accessible in \code{window->frame}. Using the signal 
frame_event you can receive all events targeted at the frame.
  
This function is used by the linux-fb port to implement managed
windows, but it could conceivably be used by X-programs that
want to do their own window decorations.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
