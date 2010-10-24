\alias{gtkWindowFullscreen}
\name{gtkWindowFullscreen}
\title{gtkWindowFullscreen}
\description{Asks to place \code{window} in the fullscreen state. Note that you
shouldn't assume the window is definitely full screen afterward,
because other entities (e.g. the user or window manager) could unfullscreen it
again, and not all window managers honor requests to fullscreen
windows. But normally the window will end up fullscreen. Just
don't write code that crashes if not.}
\usage{gtkWindowFullscreen(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkWindow}}}}
\details{You can track the fullscreen state via the "window-state-event" signal
on \code{\link{GtkWidget}}.
  Since 2.2}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
