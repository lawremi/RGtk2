\alias{gdkEventHandlerSet}
\name{gdkEventHandlerSet}
\title{gdkEventHandlerSet}
\description{Sets the function to call to handle all events from GDK.}
\usage{gdkEventHandlerSet(func, data)}
\arguments{
\item{\code{func}}{[\code{\link{GdkEventFunc}}]  the function to call to handle events from GDK.}
\item{\code{data}}{[R object]  user data to pass to the function. }
}
\details{Note that GTK+ uses this to install its own event handler, so it is
usually not useful for GTK+ applications. (Although an application
can call this function then call \code{\link{gtkMainDoEvent}} to pass
events to GTK+.)  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
