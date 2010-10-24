\alias{gtkWindowIconify}
\name{gtkWindowIconify}
\title{gtkWindowIconify}
\description{Asks to iconify (i.e. minimize) the specified \code{window}. Note that
you shouldn't assume the window is definitely iconified afterward,
because other entities (e.g. the user or window manager) could deiconify it
again, or there may not be a window manager in which case
iconification isn't possible, etc. But normally the window will end
up iconified. Just don't write code that crashes if not.}
\usage{gtkWindowIconify(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkWindow}}}}
\details{It's permitted to call this function before showing a window,
in which case the window will be iconified before it ever appears
onscreen.
  
You can track iconification via the "window-state-event" signal
on \code{\link{GtkWidget}}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
