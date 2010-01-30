\alias{gtkClipboardWaitForImage}
\name{gtkClipboardWaitForImage}
\title{gtkClipboardWaitForImage}
\description{Requests the contents of the clipboard as image and converts
the result to a \verb{\link{GdkPixbuf}}. This function waits for
the data to be received using the main loop, so events,
timeouts, etc, may be dispatched during the wait.}
\usage{gtkClipboardWaitForImage(object)}
\arguments{\item{\verb{object}}{[\verb{\link{GtkClipboard}}]  a \verb{\link{GtkClipboard}}}}
\details{  Since  2.6}
\value{[\verb{\link{GdkPixbuf}}] , or \code{NULL} if 
              retrieving the selection data failed. (This 
              could happen for various reasons, in particular 
              if the clipboard was empty or if the contents of 
              the clipboard could not be converted into an image.)}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
