\alias{gtkTextIterOrder}
\name{gtkTextIterOrder}
\title{gtkTextIterOrder}
\description{Swaps the value of \code{first} and \code{second} if \code{second} comes before
\code{first} in the buffer. That is, ensures that \code{first} and \code{second} are
in sequence. Most text buffer functions that take a range call this
automatically on your behalf, so there's no real reason to call it yourself
in those cases. There are some exceptions, such as \code{\link{gtkTextIterInRange}},
that expect a pre-sorted range.}
\usage{gtkTextIterOrder(object, second)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkTextIter}}}
\item{\verb{second}}{another \code{\link{GtkTextIter}}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
