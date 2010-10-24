\alias{gtkTextIterForwardVisibleCursorPositions}
\name{gtkTextIterForwardVisibleCursorPositions}
\title{gtkTextIterForwardVisibleCursorPositions}
\description{Moves up to \code{count} visible cursor positions. See
\code{\link{gtkTextIterForwardCursorPosition}} for details.}
\usage{gtkTextIterForwardVisibleCursorPositions(object, count)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkTextIter}}}
\item{\verb{count}}{number of positions to move}
}
\details{Since 2.4}
\value{[logical] \code{TRUE} if we moved and the new position is dereferenceable}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
