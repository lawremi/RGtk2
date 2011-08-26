\alias{gdkEventHandlerSet}
\name{gdkEventHandlerSet}
\title{gdkEventHandlerSet}
\description{Sets the function to call to handle all events from GDK.}
\usage{gdkEventHandlerSet(func, data)}
\arguments{
\item{\verb{func}}{the function to call to handle events from GDK.}
\item{\verb{data}}{user data to pass to the function.}
}
\details{Note that GTK+ uses this to install its own event handler, so it is
usually not useful for GTK+ applications. (Although an application
can call this function then call \code{\link{gtkMainDoEvent}} to pass
events to GTK+.)}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
