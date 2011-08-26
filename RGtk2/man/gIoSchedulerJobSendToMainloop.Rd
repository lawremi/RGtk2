\alias{gIoSchedulerJobSendToMainloop}
\name{gIoSchedulerJobSendToMainloop}
\title{gIoSchedulerJobSendToMainloop}
\description{Used from an I/O job to send a callback to be run in the thread
that the job was started from, waiting for the result (and thus
blocking the I/O job).}
\usage{gIoSchedulerJobSendToMainloop(object, func, user.data = NULL)}
\arguments{
\item{\verb{object}}{a \code{\link{GIOSchedulerJob}}}
\item{\verb{func}}{a \verb{GSourceFunc} callback that will be called in the original thread}
\item{\verb{user.data}}{data to pass to \code{func}}
}
\value{[logical] The return value of \code{func}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
