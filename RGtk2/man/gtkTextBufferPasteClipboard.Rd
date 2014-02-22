\alias{gtkTextBufferPasteClipboard}
\name{gtkTextBufferPasteClipboard}
\title{gtkTextBufferPasteClipboard}
\description{Pastes the contents of a clipboard at the insertion point, or at
\code{override.location}. (Note: pasting is asynchronous, that is, we'll 
ask for the paste data and return, and at some point later after 
the main loop runs, the paste data will be inserted.)}
\usage{gtkTextBufferPasteClipboard(object, clipboard, override.location = NULL, 
    default.editable)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkTextBuffer}}}
\item{\verb{clipboard}}{the \code{\link{GtkClipboard}} to paste from}
\item{\verb{override.location}}{location to insert pasted text, or \code{NULL} for
at the cursor. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{default.editable}}{whether the buffer is editable by default}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
