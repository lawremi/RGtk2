\alias{gtkWindowResize}
\name{gtkWindowResize}
\title{gtkWindowResize}
\description{Resizes the window as if the user had done so, obeying geometry
constraints. The default geometry constraint is that windows may
not be smaller than their size request; to override this
constraint, call \code{\link{gtkWidgetSetSizeRequest}} to set the window's
request to a smaller value.}
\usage{gtkWindowResize(object, width, height)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkWindow}}}
\item{\verb{width}}{width in pixels to resize the window to}
\item{\verb{height}}{height in pixels to resize the window to}
}
\details{If \code{\link{gtkWindowResize}} is called before showing a window for the
first time, it overrides any default size set with
\code{\link{gtkWindowSetDefaultSize}}.
  
Windows may not be resized smaller than 1 by 1 pixels.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
