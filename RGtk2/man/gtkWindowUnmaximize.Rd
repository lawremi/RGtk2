\alias{gtkWindowUnmaximize}
\name{gtkWindowUnmaximize}
\title{gtkWindowUnmaximize}
\description{Asks to unmaximize \code{window}. Note that you shouldn't assume the
window is definitely unmaximized afterward, because other entities
(e.g. the user or window
manager) could maximize it again, and not all window
managers honor requests to unmaximize. But normally the window will
end up unmaximized. Just don't write code that crashes if not.}
\usage{gtkWindowUnmaximize(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkWindow}}}}
\details{You can track maximization via the "window-state-event" signal
on \code{\link{GtkWidget}}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
