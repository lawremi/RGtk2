\alias{gtkClipboardWaitIsImageAvailable}
\name{gtkClipboardWaitIsImageAvailable}
\title{gtkClipboardWaitIsImageAvailable}
\description{Test to see if there is an image available to be pasted
This is done by requesting the TARGETS atom and checking
if it contains any of the supported image targets. This function 
waits for the data to be received using the main loop, so events, 
timeouts, etc, may be dispatched during the wait.}
\usage{gtkClipboardWaitIsImageAvailable(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkClipboard}}}}
\details{This function is a little faster than calling
\code{\link{gtkClipboardWaitForImage}} since it doesn't need to retrieve
the actual image data.
  Since 2.6}
\value{[logical] \code{TRUE} is there is an image available, \code{FALSE} otherwise.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
