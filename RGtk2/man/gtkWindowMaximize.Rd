\alias{gtkWindowMaximize}
\name{gtkWindowMaximize}
\title{gtkWindowMaximize}
\description{Asks to maximize \code{window}, so that it becomes full-screen. Note that
you shouldn't assume the window is definitely maximized afterward,
because other entities (e.g. the user or window manager) could unmaximize it
again, and not all window managers support maximization. But
normally the window will end up maximized. Just don't write code
that crashes if not.}
\usage{gtkWindowMaximize(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkWindow}}}}
\details{It's permitted to call this function before showing a window,
in which case the window will be maximized when it appears onscreen
initially.
  
You can track maximization via the "window-state-event" signal
on \code{\link{GtkWidget}}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
