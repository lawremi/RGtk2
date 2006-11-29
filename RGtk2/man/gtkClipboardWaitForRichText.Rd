\alias{gtkClipboardWaitForRichText}
\name{gtkClipboardWaitForRichText}
\title{gtkClipboardWaitForRichText}
\description{Requests the contents of the clipboard as rich text.  This function
waits for the data to be received using the main loop, so events,
timeouts, etc, may be dispatched during the wait.}
\usage{gtkClipboardWaitForRichText(object, buffer)}
\arguments{
\item{\code{object}}{[\code{\link{GtkClipboard}}]  a \code{\link{GtkClipboard}}}
\item{\code{buffer}}{[\code{\link{GtkTextBuffer}}]  a \code{\link{GtkTextBuffer}}}
}
\details{  Since  2.10}
\value{
A list containing the following elements:
\item{retval}{[raw] , or \code{NULL} if retrieving
              the selection data failed. (This could happen
              for various reasons, in particular if the
              clipboard was empty or if the contents of the
              clipboard could not be converted into text form.)}
\item{\code{format}}{[\code{\link{GdkAtom}}]  return location for the format of the returned data}
\item{\code{length}}{[numeric]  return location for the length of the returned data}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
