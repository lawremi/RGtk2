\alias{gtkTextIterBackwardVisibleCursorPositions}
\name{gtkTextIterBackwardVisibleCursorPositions}
\title{gtkTextIterBackwardVisibleCursorPositions}
\description{Moves up to \code{count} visible cursor positions. See
\code{\link{gtkTextIterForwardCursorPosition}} for details.}
\usage{gtkTextIterBackwardVisibleCursorPositions(object, count)}
\arguments{
\item{\code{object}}{[\code{\link{GtkTextIter}}]  a \code{\link{GtkTextIter}}}
\item{\code{count}}{[integer]  number of positions to move}
}
\details{  Since  2.4}
\value{[logical]  \code{TRUE} if we moved and the new position is dereferenceable}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
