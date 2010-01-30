\alias{gtkTextBufferGetSelectionBound}
\name{gtkTextBufferGetSelectionBound}
\title{gtkTextBufferGetSelectionBound}
\description{Returns the mark that represents the selection bound.  Equivalent
to calling \code{\link{gtkTextBufferGetMark}} to get the mark named
"selection_bound", but very slightly more efficient, and involves
less typing.}
\usage{gtkTextBufferGetSelectionBound(object)}
\arguments{\item{\verb{object}}{[\verb{\link{GtkTextBuffer}}]  a \verb{\link{GtkTextBuffer}}}}
\details{The currently-selected text in \code{buffer} is the region between the
"selection_bound" and "insert" marks. If "selection_bound" and
"insert" are in the same place, then there is no current selection.
\code{\link{gtkTextBufferGetSelectionBounds}} is another convenient function
for handling the selection, if you just want to know whether there's a
selection and what its bounds are.  }
\value{[\verb{\link{GtkTextMark}}]  selection bound mark}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
