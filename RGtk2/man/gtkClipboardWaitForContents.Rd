\alias{gtkClipboardWaitForContents}
\name{gtkClipboardWaitForContents}
\title{gtkClipboardWaitForContents}
\description{Requests the contents of the clipboard using the given target.
This function waits for the data to be received using the main 
loop, so events, timeouts, etc, may be dispatched during the wait.}
\usage{gtkClipboardWaitForContents(object, target)}
\arguments{
\item{\code{object}}{[\code{\link{GtkClipboard}}]  a \code{\link{GtkClipboard}}}
\item{\code{target}}{[\code{\link{GdkAtom}}]  an atom representing the form into which the clipboard
         owner should convert the selection.}
}
\value{[\code{\link{GtkSelectionData}}]  a newly-allocated \code{\link{GtkSelectionData}} object or \code{NULL}
              if retrieving the given target failed. If non-\code{NULL}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
