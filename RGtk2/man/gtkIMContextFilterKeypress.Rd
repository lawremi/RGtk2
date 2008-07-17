\alias{gtkIMContextFilterKeypress}
\name{gtkIMContextFilterKeypress}
\title{gtkIMContextFilterKeypress}
\description{Allow an input method to internally handle key press and release 
events. If this function returns \code{TRUE}, then no further processing
should be done for this key event.}
\usage{gtkIMContextFilterKeypress(object, event)}
\arguments{
\item{\code{object}}{[\code{\link{GtkIMContext}}]  a \code{\link{GtkIMContext}}}
\item{\code{event}}{[\code{\link{GdkEventKey}}]  the key event}
}
\value{[logical] \code{TRUE} if the input method handled the key event.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
