\alias{gtkTextIterGetMarks}
\name{gtkTextIterGetMarks}
\title{gtkTextIterGetMarks}
\description{Returns a list of all \code{\link{GtkTextMark}} at this location. Because marks
are not iterable (they don't take up any "space" in the buffer,
they are just marks in between iterable locations), multiple marks
can exist in the same place. The returned list is not in any
meaningful order.}
\usage{gtkTextIterGetMarks(object)}
\arguments{\item{\code{object}}{[\code{\link{GtkTextIter}}]  an iterator}}
\value{[list]  list of \code{\link{GtkTextMark}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
