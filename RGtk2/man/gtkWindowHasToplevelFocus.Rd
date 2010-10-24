\alias{gtkWindowHasToplevelFocus}
\name{gtkWindowHasToplevelFocus}
\title{gtkWindowHasToplevelFocus}
\description{Returns whether the input focus is within this GtkWindow.
For real toplevel windows, this is identical to \code{\link{gtkWindowIsActive}},
but for embedded windows, like \code{\link{GtkPlug}}, the results will differ.}
\usage{gtkWindowHasToplevelFocus(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkWindow}}}}
\details{Since 2.4}
\value{[logical] \code{TRUE} if the input focus is within this GtkWindow}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
