\alias{gtkClipboardWaitForText}
\name{gtkClipboardWaitForText}
\title{gtkClipboardWaitForText}
\description{Requests the contents of the clipboard as text and converts
the result to UTF-8 if necessary. This function waits for
the data to be received using the main loop, so events,
timeouts, etc, may be dispatched during the wait.}
\usage{gtkClipboardWaitForText(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkClipboard}}}}
\value{[character]  or \code{NULL} if retrieving
the selection data failed. (This could happen
for various reasons, in particular if the
clipboard was empty or if the contents of the
clipboard could not be converted into text form.)}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
