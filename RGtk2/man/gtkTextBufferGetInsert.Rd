\alias{gtkTextBufferGetInsert}
\name{gtkTextBufferGetInsert}
\title{gtkTextBufferGetInsert}
\description{Returns the mark that represents the cursor (insertion point).
Equivalent to calling \code{\link{gtkTextBufferGetMark}} to get the mark
named "insert", but very slightly more efficient, and involves less
typing.}
\usage{gtkTextBufferGetInsert(object)}
\arguments{\item{\verb{object}}{[\verb{\link{GtkTextBuffer}}]  a \verb{\link{GtkTextBuffer}}}}
\value{[\verb{\link{GtkTextMark}}]  insertion point mark}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
