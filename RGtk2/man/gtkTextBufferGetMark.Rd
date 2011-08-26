\alias{gtkTextBufferGetMark}
\name{gtkTextBufferGetMark}
\title{gtkTextBufferGetMark}
\description{Returns the mark named \code{name} in buffer \code{buffer}, or \code{NULL} if no such
mark exists in the buffer.}
\usage{gtkTextBufferGetMark(object, name)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkTextBuffer}}}
\item{\verb{name}}{a mark name}
}
\value{[\code{\link{GtkTextMark}}] a \code{\link{GtkTextMark}}, or \code{NULL}. \emph{[  \acronym{transfer none}  ]}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
