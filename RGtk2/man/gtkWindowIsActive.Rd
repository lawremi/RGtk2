\alias{gtkWindowIsActive}
\name{gtkWindowIsActive}
\title{gtkWindowIsActive}
\description{Returns whether the window is part of the current active toplevel.
(That is, the toplevel window receiving keystrokes.)
The return value is \code{TRUE} if the window is active toplevel
itself, but also if it is, say, a \code{\link{GtkPlug}} embedded in the active toplevel.
You might use this function if you wanted to draw a widget
differently in an active window from a widget in an inactive window.
See \code{\link{gtkWindowHasToplevelFocus}}}
\usage{gtkWindowIsActive(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkWindow}}}}
\details{Since 2.4}
\value{[logical] \code{TRUE} if the window part of the current active window.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
