\alias{gtkClipboardRequestImage}
\name{gtkClipboardRequestImage}
\title{gtkClipboardRequestImage}
\description{Requests the contents of the clipboard as image. When the image is
later received, it will be converted to a \verb{\link{GdkPixbuf}}, and
\code{callback} will be called. }
\usage{gtkClipboardRequestImage(object, callback, user.data = NULL)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkClipboard}}]  a \verb{\link{GtkClipboard}}}
\item{\verb{callback}}{[\verb{\link{GtkClipboardImageReceivedFunc}}]   a function to call when the image is received,
            or the retrieval fails. (It will always be called
            one way or the other.)}
\item{\verb{user.data}}{[R object]  user data to pass to \code{callback}.}
}
\details{The \code{pixbuf} parameter to \code{callback} will contain the resulting 
\verb{\link{GdkPixbuf}} if the request succeeded, or \code{NULL} if it failed. This 
could happen for various reasons, in particular if the clipboard 
was empty or if the contents of the clipboard could not be 
converted into an image.  

  Since  2.6}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
