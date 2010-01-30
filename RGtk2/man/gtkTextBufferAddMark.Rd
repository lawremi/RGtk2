\alias{gtkTextBufferAddMark}
\name{gtkTextBufferAddMark}
\title{gtkTextBufferAddMark}
\description{Adds the mark at position \code{where}. The mark must not be added to
another buffer, and if its name is not \code{NULL} then there must not
be another mark in the buffer with the same name.}
\usage{gtkTextBufferAddMark(object, mark, where)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkTextBuffer}}]  a \verb{\link{GtkTextBuffer}}}
\item{\verb{mark}}{[\verb{\link{GtkTextMark}}]  the mark to add}
\item{\verb{where}}{[\verb{\link{GtkTextIter}}]  location to place mark}
}
\details{Emits the "mark_set" signal as notification of the mark's initial
placement.  

  Since  2.12}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
