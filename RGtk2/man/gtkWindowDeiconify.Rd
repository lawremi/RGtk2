\alias{gtkWindowDeiconify}
\name{gtkWindowDeiconify}
\title{gtkWindowDeiconify}
\description{Asks to deiconify (i.e. unminimize) the specified \code{window}. Note
that you shouldn't assume the window is definitely deiconified
afterward, because other entities (e.g. the user or window manager) could iconify it
again before your code which assumes deiconification gets to run.}
\usage{gtkWindowDeiconify(object)}
\arguments{\item{\verb{object}}{[\verb{\link{GtkWindow}}]  a \verb{\link{GtkWindow}}}}
\details{You can track iconification via the "window_state_event" signal
on \verb{\link{GtkWidget}}.  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
