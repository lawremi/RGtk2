\alias{gSocketCreateSource}
\name{gSocketCreateSource}
\title{gSocketCreateSource}
\description{Creates a \code{GSource} that can be attached to a \code{GMainContext} to monitor
for the availibility of the specified \code{condition} on the socket.}
\usage{gSocketCreateSource(object, condition, cancellable = NULL)}
\arguments{
\item{\verb{object}}{a \code{\link{GSocket}}}
\item{\verb{condition}}{a \code{\link{GIOCondition}} mask to monitor}
\item{\verb{cancellable}}{a \code{\link{GCancellable}} or \code{NULL}}
}
\details{The callback on the source is of the \verb{GSocketSourceFunc} type.
  
It is meaningless to specify \code{G_IO_ERR} or \code{G_IO_HUP} in condition;
these conditions will always be reported output if they are true.
  \code{cancellable} if not \code{NULL} can be used to cancel the source, which will
cause the source to trigger, reporting the current condition (which
is likely 0 unless cancellation happened at the same time as a
condition change). You can check for this in the callback using
\code{\link{gCancellableIsCancelled}}.
  Since 2.22}
\value{[GSource] a newly allocated \code{GSource}, free with \code{gSourceUnref()}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
