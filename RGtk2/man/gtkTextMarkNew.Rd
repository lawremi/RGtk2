\alias{gtkTextMarkNew}
\name{gtkTextMarkNew}
\title{gtkTextMarkNew}
\description{Creates a text mark. Add it to a buffer using \code{\link{gtkTextBufferAddMark}}.
If \code{name} is \code{NULL}, the mark is anonymous; otherwise, the mark can be 
retrieved by name using \code{\link{gtkTextBufferGetMark}}. If a mark has left 
gravity, and text is inserted at the mark's current location, the mark 
will be moved to the left of the newly-inserted text. If the mark has 
right gravity (\code{left.gravity} = \code{FALSE}), the mark will end up on the 
right of newly-inserted text. The standard left-to-right cursor is a 
mark with right gravity (when you type, the cursor stays on the right
side of the text you're typing).}
\usage{gtkTextMarkNew(name, left.gravity)}
\arguments{
\item{\verb{name}}{mark name or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{left.gravity}}{whether the mark should have left gravity}
}
\details{Since 2.12}
\value{[\code{\link{GtkTextMark}}] new \code{\link{GtkTextMark}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
