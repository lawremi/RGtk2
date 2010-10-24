\alias{gtkTextViewGetVisibleRect}
\name{gtkTextViewGetVisibleRect}
\title{gtkTextViewGetVisibleRect}
\description{Fills \code{visible.rect} with the currently-visible
region of the buffer, in buffer coordinates. Convert to window coordinates
with \code{\link{gtkTextViewBufferToWindowCoords}}.}
\usage{gtkTextViewGetVisibleRect(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkTextView}}}}
\value{
A list containing the following elements:
\item{\verb{visible.rect}}{rectangle to fill}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
