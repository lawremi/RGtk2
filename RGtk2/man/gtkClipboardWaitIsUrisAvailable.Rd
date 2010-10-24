\alias{gtkClipboardWaitIsUrisAvailable}
\name{gtkClipboardWaitIsUrisAvailable}
\title{gtkClipboardWaitIsUrisAvailable}
\description{Test to see if there is a list of URIs available to be pasted
This is done by requesting the TARGETS atom and checking
if it contains the URI targets. This function
waits for the data to be received using the main loop, so events, 
timeouts, etc, may be dispatched during the wait.}
\usage{gtkClipboardWaitIsUrisAvailable(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkClipboard}}}}
\details{This function is a little faster than calling
\code{\link{gtkClipboardWaitForUris}} since it doesn't need to retrieve
the actual URI data.
  Since 2.14}
\value{[logical] \code{TRUE} is there is an URI list available, \code{FALSE} otherwise.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
