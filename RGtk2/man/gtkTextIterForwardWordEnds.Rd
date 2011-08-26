\alias{gtkTextIterForwardWordEnds}
\name{gtkTextIterForwardWordEnds}
\title{gtkTextIterForwardWordEnds}
\description{Calls \code{\link{gtkTextIterForwardWordEnd}} up to \code{count} times.}
\usage{gtkTextIterForwardWordEnds(object, count)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkTextIter}}}
\item{\verb{count}}{number of times to move}
}
\value{[logical] \code{TRUE} if \code{iter} moved and is not the end iterator}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
