\alias{gtkClipboardRequestContents}
\name{gtkClipboardRequestContents}
\title{gtkClipboardRequestContents}
\description{Requests the contents of clipboard as the given target.
When the results of the result are later received the supplied callback
will be called.}
\usage{gtkClipboardRequestContents(object, target, callback, user.data = NULL)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkClipboard}}]  a \verb{\link{GtkClipboard}}}
\item{\verb{target}}{[\verb{\link{GdkAtom}}]     an atom representing the form into which the clipboard
            owner should convert the selection.}
\item{\verb{callback}}{[\verb{\link{GtkClipboardReceivedFunc}}]   A function to call when the results are received
            (or the retrieval fails). If the retrieval fails
            the length field of \code{selection.data} will be
            negative.}
\item{\verb{user.data}}{[R object]  user data to pass to \code{callback}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
