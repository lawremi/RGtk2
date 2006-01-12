\alias{gtkClipboardRequestContents}
\name{gtkClipboardRequestContents}
\title{gtkClipboardRequestContents}
\description{Requests the contents of clipboard as the given target.
When the results of the result are later received the supplied callback
will be called.}
\usage{gtkClipboardRequestContents(object, target, callback, user.data = NULL)}
\arguments{
\item{\code{object}}{[\code{\link{GtkClipboard}}]  a \code{\link{GtkClipboard}}}
\item{\code{target}}{[\code{\link{GdkAtom}}]     an atom representing the form into which the clipboard
            owner should convert the selection.}
\item{\code{callback}}{[\code{\link{GtkClipboardReceivedFunc}}]   A function to call when the results are received
            (or the retrieval fails). If the retrieval fails
            the length field of \code{selection.data} will be
            negative.}
\item{\code{user.data}}{[R object]  user data to pass to \code{callback}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
