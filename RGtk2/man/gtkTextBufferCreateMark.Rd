\alias{gtkTextBufferCreateMark}
\name{gtkTextBufferCreateMark}
\title{gtkTextBufferCreateMark}
\description{Creates a mark at position \code{where}. If \code{mark.name} is \code{NULL}, the mark
is anonymous; otherwise, the mark can be retrieved by name using
\code{\link{gtkTextBufferGetMark}}. If a mark has left gravity, and text is
inserted at the mark's current location, the mark will be moved to
the left of the newly-inserted text. If the mark has right gravity
(\code{left.gravity} = \code{FALSE}), the mark will end up on the right of
newly-inserted text. The standard left-to-right cursor is a mark
with right gravity (when you type, the cursor stays on the right
side of the text you're typing).}
\usage{gtkTextBufferCreateMark(object, mark.name = NULL, where, left.gravity = FALSE)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkTextBuffer}}}
\item{\verb{mark.name}}{name for mark, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{where}}{location to place mark}
\item{\verb{left.gravity}}{whether the mark has left gravity}
}
\details{The caller of this function does \emph{not} own a 
reference to the returned \code{\link{GtkTextMark}}, so you can ignore the 
return value if you like.
  
Emits the "mark-set" signal as notification of the mark's initial
placement.}
\value{[\code{\link{GtkTextMark}}] the new \code{\link{GtkTextMark}} object}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
