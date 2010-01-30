\alias{gtkClipboardWaitForTargets}
\name{gtkClipboardWaitForTargets}
\title{gtkClipboardWaitForTargets}
\description{Returns a list of targets that are present on the clipboard, or \code{NULL}
if there aren't any targets available.
This function waits for the data to be received using the main 
loop, so events, timeouts, etc, may be dispatched during the wait.}
\usage{gtkClipboardWaitForTargets(object)}
\arguments{\item{\verb{object}}{[\verb{\link{GtkClipboard}}]  a \verb{\link{GtkClipboard}}}}
\details{  Since  2.4}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} if any targets are present on the clipboard,
              otherwise \code{FALSE}.}
\item{\verb{targets}}{[\verb{\link{GdkAtom}}]  location to store a list of targets. The result
          stored here must be freed with \code{gFree()}.}
\item{\verb{n.targets}}{[integer]  location to store number of items in \code{targets}.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
