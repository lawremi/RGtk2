\alias{gio-GIOScheduler}
\alias{GIOSchedulerJob}
\alias{GIOSchedulerJobFunc}
\name{gio-GIOScheduler}
\title{GIOScheduler}
\description{I/O Scheduler}
\section{Methods and Functions}{
\code{\link{gIoSchedulerCancelAllJobs}()}\cr
\code{\link{gIoSchedulerJobSendToMainloop}(object, func, user.data = NULL)}\cr
\code{\link{gIoSchedulerJobSendToMainloopAsync}(object, func, user.data = NULL)}\cr
}
\section{Detailed Description}{Schedules asynchronous I/O operations. \verb{GIOScheduler} integrates 
into the main event loop (\verb{GMainLoop}) and may use threads if they 
are available.
  
Each I/O operation has a priority, and the scheduler uses the priorities
to determine the order in which operations are executed. They are 
\emph{not} used to determine system-wide I/O scheduling.
Priorities are integers, with lower numbers indicating higher priority. 
It is recommended to choose priorities between \code{G_PRIORITY_LOW} and 
\code{G_PRIORITY_HIGH}, with \code{G_PRIORITY_DEFAULT} as a default.}
\section{Structures}{\describe{\item{\verb{GIOSchedulerJob}}{
Opaque class for definining and scheduling IO jobs.

}}}
\section{User Functions}{\describe{\item{\code{GIOSchedulerJobFunc(job, cancellable, user.data)}}{
I/O Job function.
  
Note that depending on whether threads are available, the
\verb{GIOScheduler} may run jobs in separate threads or in an idle
in the mainloop.
  
Long-running jobs should periodically check the \code{cancellable}
to see if they have been cancelled.

\describe{
\item{\code{job}}{a \code{\link{GIOSchedulerJob}}.}
\item{\code{cancellable}}{optional \code{\link{GCancellable}} object, \code{NULL} to ignore.}
\item{\code{user.data}}{the data to pass to callback function}
}

\emph{Returns:} [logical] \code{TRUE} if this function should be called again to
complete the job, \code{FALSE} if the job is complete (or cancelled)

}}}
\references{\url{https://developer-old.gnome.org/gio/stable/gio-GIOScheduler.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
