\alias{gtkWindowUnstick}
\name{gtkWindowUnstick}
\title{gtkWindowUnstick}
\description{Asks to unstick \code{window}, which means that it will appear on only
one of the user's desktops. Note that you shouldn't assume the
window is definitely unstuck afterward, because other entities
(e.g. the user or window
manager) could stick it again. But normally the window will
end up stuck. Just don't write code that crashes if not.}
\usage{gtkWindowUnstick(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkWindow}}}}
\details{You can track stickiness via the "window-state-event" signal
on \code{\link{GtkWidget}}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
