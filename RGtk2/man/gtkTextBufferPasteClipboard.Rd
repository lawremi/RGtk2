\alias{gtkTextBufferPasteClipboard}
\name{gtkTextBufferPasteClipboard}
\title{gtkTextBufferPasteClipboard}
\description{Pastes the contents of a clipboard at the insertion point, or at \code{override.location}.
(Note: pasting is asynchronous, that is, we'll ask for the paste data and
return, and at some point later after the main loop runs, the paste
data will be inserted.)}
\usage{gtkTextBufferPasteClipboard(object, clipboard, override.location = NULL, default.editable)}
\arguments{
\item{\code{object}}{[\code{\link{GtkTextBuffer}}]  a \code{\link{GtkTextBuffer}}}
\item{\code{clipboard}}{[\code{\link{GtkClipboard}}]  the \code{\link{GtkClipboard}} to paste from}
\item{\code{override.location}}{[\code{\link{GtkTextIter}}]  location to insert pasted text, or \code{NULL} for at the cursor}
\item{\code{default.editable}}{[logical]  whether the buffer is editable by default}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
