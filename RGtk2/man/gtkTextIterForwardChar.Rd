\alias{gtkTextIterForwardChar}
\name{gtkTextIterForwardChar}
\title{gtkTextIterForwardChar}
\description{Moves \code{iter} forward by one character offset. Note that images
embedded in the buffer occupy 1 character slot, so
\code{\link{gtkTextIterForwardChar}} may actually move onto an image instead
of a character, if you have images in your buffer.  If \code{iter} is the
end iterator or one character before it, \code{iter} will now point at
the end iterator, and \code{\link{gtkTextIterForwardChar}} returns \code{FALSE} for
convenience when writing loops.}
\usage{gtkTextIterForwardChar(object)}
\arguments{\item{\verb{object}}{an iterator}}
\value{[logical] whether \code{iter} moved and is dereferenceable}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
