\alias{gtkTextIterForwardSentenceEnds}
\name{gtkTextIterForwardSentenceEnds}
\title{gtkTextIterForwardSentenceEnds}
\description{Calls \code{\link{gtkTextIterForwardSentenceEnd}} \code{count} times (or until
\code{\link{gtkTextIterForwardSentenceEnd}} returns \code{FALSE}). If \code{count} is
negative, moves backward instead of forward.}
\usage{gtkTextIterForwardSentenceEnds(object, count)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkTextIter}}}
\item{\verb{count}}{number of sentences to move}
}
\value{[logical] \code{TRUE} if \code{iter} moved and is not the end iterator}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
