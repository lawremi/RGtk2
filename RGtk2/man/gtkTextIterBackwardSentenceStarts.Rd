\alias{gtkTextIterBackwardSentenceStarts}
\name{gtkTextIterBackwardSentenceStarts}
\title{gtkTextIterBackwardSentenceStarts}
\description{Calls \code{\link{gtkTextIterBackwardSentenceStart}} up to \code{count} times,
or until it returns \code{FALSE}. If \code{count} is negative, moves forward
instead of backward.}
\usage{gtkTextIterBackwardSentenceStarts(object, count)}
\arguments{
\item{\code{object}}{[\code{\link{GtkTextIter}}]  a \code{\link{GtkTextIter}}}
\item{\code{count}}{[integer]  number of sentences to move}
}
\value{[logical]  \code{TRUE} if \code{iter} moved and is not the end iterator}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
