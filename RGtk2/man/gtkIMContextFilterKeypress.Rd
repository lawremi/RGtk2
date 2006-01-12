\alias{gtkIMContextFilterKeypress}
\name{gtkIMContextFilterKeypress}
\title{gtkIMContextFilterKeypress}
\description{Allow an input method to internally handle a key press event.
If this function returns \code{TRUE}, then no further processing
should be done for this keystroke.}
\usage{gtkIMContextFilterKeypress(object, event)}
\arguments{
\item{\code{object}}{[\code{\link{GtkIMContext}}]  a \code{\link{GtkIMContext}}}
\item{\code{event}}{[\code{\link{GdkEventKey}}]  the key event}
}
\value{[logical]  \code{TRUE} if the input method handled the keystroke.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
