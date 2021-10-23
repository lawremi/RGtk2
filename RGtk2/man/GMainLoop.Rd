\name{GMainLoop}
\alias{GMainLoop}
\alias{gTimeoutAdd}
\alias{gIdleAdd}
\alias{gSourceRemove}
\alias{print.CallbackID}

\title{The GLib Main Loop}
\description{
GLib provides an event-loop to all GLib-based libraries and applications.
RGtk2 is one such library.
}
\usage{
gTimeoutAdd(interval, f, data = NULL)
gIdleAdd(f, data = NULL)
gSourceRemove(id)
}
\arguments{
\item{interval}{The time interval which determines the frequency of the handler call}
\item{f}{An R function that is called by the loop}
\item{data}{Any R object that is passed to the R function as the last parameter}
\item{id}{The source id obtained when adding a handler}
}
\value{
\code{gIdleAdd} and \code{gTimeoutAdd} both return a source id that may be used 
to remove the handler later.
}
\details{
The RGtk2 user has limited control over the event loop, but it still possible to 
register handlers as either timeout or idle tasks. A handler may be any R 
function, though it must return \code{TRUE} as long as it wants to stay connected 
to the loop.

Timeout tasks are performed once per some specified interval of time. Use 
\code{gTimeoutAdd} to register such a handler.

When the event loop is idle (not busy) it will execute the idle handlers, which 
may be registered with \code{gIdleAdd}.

If one needs to externally remove a handler from the loop, \code{gSourceRemove} 
will serve this purpose.
}
\author{Michael Lawrence}
\references{\url{https://developer-old.gnome.org/glib/stable/glib-The-Main-Event-Loop.html}}
\keyword{interface}
