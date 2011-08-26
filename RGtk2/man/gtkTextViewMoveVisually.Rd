\alias{gtkTextViewMoveVisually}
\name{gtkTextViewMoveVisually}
\title{gtkTextViewMoveVisually}
\description{Move the iterator a given number of characters visually, treating
it as the strong cursor position. If \code{count} is positive, then the
new strong cursor position will be \code{count} positions to the right of
the old cursor position. If \code{count} is negative then the new strong
cursor position will be \code{count} positions to the left of the old
cursor position.}
\usage{gtkTextViewMoveVisually(object, iter, count)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkTextView}}}
\item{\verb{iter}}{a \code{\link{GtkTextIter}}}
\item{\verb{count}}{number of characters to move (negative moves left,
positive moves right)}
}
\details{In the presence of bi-directional text, the correspondence
between logical and visual order will depend on the direction
of the current run, and there may be jumps when the cursor
is moved off of the end of a run.}
\value{[logical] \code{TRUE} if \code{iter} moved and is not on the end iterator}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
