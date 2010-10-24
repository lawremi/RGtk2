\alias{gtkClipboardWaitIsTextAvailable}
\name{gtkClipboardWaitIsTextAvailable}
\title{gtkClipboardWaitIsTextAvailable}
\description{Test to see if there is text available to be pasted
This is done by requesting the TARGETS atom and checking
if it contains any of the supported text targets. This function 
waits for the data to be received using the main loop, so events, 
timeouts, etc, may be dispatched during the wait.}
\usage{gtkClipboardWaitIsTextAvailable(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkClipboard}}}}
\details{This function is a little faster than calling
\code{\link{gtkClipboardWaitForText}} since it doesn't need to retrieve
the actual text.}
\value{[logical] \code{TRUE} is there is text available, \code{FALSE} otherwise.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
