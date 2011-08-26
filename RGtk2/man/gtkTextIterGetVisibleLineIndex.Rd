\alias{gtkTextIterGetVisibleLineIndex}
\name{gtkTextIterGetVisibleLineIndex}
\title{gtkTextIterGetVisibleLineIndex}
\description{Returns the number of bytes from the start of the
line to the given \code{iter}, not counting bytes that
are invisible due to tags with the "invisible" flag
toggled on.}
\usage{gtkTextIterGetVisibleLineIndex(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkTextIter}}}}
\value{[integer] byte index of \code{iter} with respect to the start of the line}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
