\alias{gtkTextBufferGetMark}
\name{gtkTextBufferGetMark}
\title{gtkTextBufferGetMark}
\description{Returns the mark named \code{name} in buffer \code{buffer}, or \code{NULL} if no such
mark exists in the buffer.}
\usage{gtkTextBufferGetMark(object, name)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkTextBuffer}}]  a \verb{\link{GtkTextBuffer}}}
\item{\verb{name}}{[character]  a mark name}
}
\value{[\verb{\link{GtkTextMark}}]  a \verb{\link{GtkTextMark}}, or \code{NULL}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
