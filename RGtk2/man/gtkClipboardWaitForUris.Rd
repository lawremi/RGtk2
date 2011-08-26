\alias{gtkClipboardWaitForUris}
\name{gtkClipboardWaitForUris}
\title{gtkClipboardWaitForUris}
\description{Requests the contents of the clipboard as URIs. This function waits
for the data to be received using the main loop, so events,
timeouts, etc, may be dispatched during the wait.}
\usage{gtkClipboardWaitForUris(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkClipboard}}}}
\details{Since 2.14}
\value{[character]  or \code{NULL} if
retrieving the selection data failed. (This
could happen for various reasons, in particular
if the clipboard was empty or if the contents of
the clipboard could not be converted into URI form.). \emph{[  \acronym{array}   zero-terminated=1][  \acronym{element-type}   utf8][  \acronym{transfer full}  ]}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
