\alias{gtkPrintOperationSetTrackPrintStatus}
\name{gtkPrintOperationSetTrackPrintStatus}
\title{gtkPrintOperationSetTrackPrintStatus}
\description{If track_status is \code{TRUE}, the print operation will try to continue report
on the status of the print job in the printer queues and printer. This
can allow your application to show things like "out of paper" issues,
and when the print job actually reaches the printer.}
\usage{gtkPrintOperationSetTrackPrintStatus(object, track.status)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkPrintOperation}}}
\item{\verb{track.status}}{\code{TRUE} to track status after printing}
}
\details{This function is often implemented using some form of polling, so it should
not be enabled unless needed.
  Since 2.10}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
