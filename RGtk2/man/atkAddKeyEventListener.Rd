\alias{atkAddKeyEventListener}
\name{atkAddKeyEventListener}
\title{atkAddKeyEventListener}
\description{Adds the specified function to the list of functions to be called
       when a key event occurs.  The \code{data} element will be passed to the
       \code{\link{AtkKeySnoopFunc}} (\code{listener}) as the \code{func.data} param, on notification.}
\usage{atkAddKeyEventListener(listener, data)}
\arguments{
\item{\verb{listener}}{[\code{\link{AtkKeySnoopFunc}}]  the listener to notify}
\item{\verb{data}}{[R object]  a \verb{R object} that points to a block of data that should be sent to the registered listeners,
       along with the event notification, when it occurs.  }
}
\value{[numeric]  added event listener id, or 0 on failure.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
