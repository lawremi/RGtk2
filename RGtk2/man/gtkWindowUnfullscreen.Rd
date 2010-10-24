\alias{gtkWindowUnfullscreen}
\name{gtkWindowUnfullscreen}
\title{gtkWindowUnfullscreen}
\description{Asks to toggle off the fullscreen state for \code{window}. Note that you
shouldn't assume the window is definitely not full screen
afterward, because other entities (e.g. the user or window manager) could fullscreen it
again, and not all window managers honor requests to unfullscreen
windows. But normally the window will end up restored to its normal
state. Just don't write code that crashes if not.}
\usage{gtkWindowUnfullscreen(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkWindow}}}}
\details{You can track the fullscreen state via the "window-state-event" signal
on \code{\link{GtkWidget}}.
  Since 2.2}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
