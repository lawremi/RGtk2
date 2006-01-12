\alias{gtkTextBufferMoveMark}
\name{gtkTextBufferMoveMark}
\title{gtkTextBufferMoveMark}
\description{Moves \code{mark} to the new location \code{where}. Emits the "mark_set" signal
as notification of the move.}
\usage{gtkTextBufferMoveMark(object, mark, where)}
\arguments{
\item{\code{object}}{[\code{\link{GtkTextBuffer}}]  a \code{\link{GtkTextBuffer}}}
\item{\code{mark}}{[\code{\link{GtkTextMark}}]  a \code{\link{GtkTextMark}}}
\item{\code{where}}{[\code{\link{GtkTextIter}}]  new location for \code{mark} in \code{buffer}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
