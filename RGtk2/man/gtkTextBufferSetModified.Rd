\alias{gtkTextBufferSetModified}
\name{gtkTextBufferSetModified}
\title{gtkTextBufferSetModified}
\description{Used to keep track of whether the buffer has been modified since the
last time it was saved. Whenever the buffer is saved to disk, call
gtk_text_buffer_set_modified (\code{buffer}, FALSE). When the buffer is modified,
it will automatically toggled on the modified bit again. When the modified
bit flips, the buffer emits a "modified-changed" signal.}
\usage{gtkTextBufferSetModified(object, setting)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkTextBuffer}}}
\item{\verb{setting}}{modification flag setting}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
