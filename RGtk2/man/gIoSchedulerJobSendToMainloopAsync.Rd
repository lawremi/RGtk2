\alias{gIoSchedulerJobSendToMainloopAsync}
\name{gIoSchedulerJobSendToMainloopAsync}
\title{gIoSchedulerJobSendToMainloopAsync}
\description{Used from an I/O job to send a callback to be run asynchronously in
the thread that the job was started from. The callback will be run
when the main loop is available, but at that time the I/O job might
have finished. The return value from the callback is ignored.}
\usage{gIoSchedulerJobSendToMainloopAsync(object, func, user.data = NULL)}
\arguments{
\item{\verb{object}}{a \code{\link{GIOSchedulerJob}}}
\item{\verb{func}}{a \verb{GSourceFunc} callback that will be called in the original thread}
\item{\verb{user.data}}{data to pass to \code{func}}
}
\details{ either by passing \code{NULL} as \code{notify} to 
\code{gIoSchedulerPushJob()} or by using refcounting for \code{user.data}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
