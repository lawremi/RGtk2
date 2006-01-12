\alias{gtkTextBufferGetInsert}
\name{gtkTextBufferGetInsert}
\title{gtkTextBufferGetInsert}
\description{Returns the mark that represents the cursor (insertion point).
Equivalent to calling \code{\link{gtkTextBufferGetMark}} to get the mark
named "insert", but very slightly more efficient, and involves less
typing.}
\usage{gtkTextBufferGetInsert(object)}
\arguments{\item{\code{object}}{[\code{\link{GtkTextBuffer}}]  a \code{\link{GtkTextBuffer}}}}
\value{[\code{\link{GtkTextMark}}]  insertion point mark}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
