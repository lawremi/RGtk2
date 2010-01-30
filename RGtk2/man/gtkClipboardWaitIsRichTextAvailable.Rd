\alias{gtkClipboardWaitIsRichTextAvailable}
\name{gtkClipboardWaitIsRichTextAvailable}
\title{gtkClipboardWaitIsRichTextAvailable}
\description{Test to see if there is rich text available to be pasted
This is done by requesting the TARGETS atom and checking
if it contains any of the supported rich text targets. This function
waits for the data to be received using the main loop, so events,
timeouts, etc, may be dispatched during the wait.}
\usage{gtkClipboardWaitIsRichTextAvailable(object, buffer)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkClipboard}}]  a \verb{\link{GtkClipboard}}}
\item{\verb{buffer}}{[\verb{\link{GtkTextBuffer}}]  a \verb{\link{GtkTextBuffer}}}
}
\details{This function is a little faster than calling
\code{\link{gtkClipboardWaitForRichText}} since it doesn't need to retrieve
the actual text.  

  Since  2.10}
\value{[logical] \code{TRUE} is there is rich text available, \code{FALSE} otherwise.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
