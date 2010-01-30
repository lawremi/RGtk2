\alias{gtkTextIterGetChar}
\name{gtkTextIterGetChar}
\title{gtkTextIterGetChar}
\description{Returns the Unicode character at this iterator.  (Equivalent to
operator* on a C++ iterator.)  If the element at this iterator is a
non-character element, such as an image embedded in the buffer, the
Unicode "unknown" character 0xFFFC is returned. If invoked on
the end iterator, zero is returned; zero is not a valid Unicode character.
So you can write a loop which ends when \code{\link{gtkTextIterGetChar}}
returns 0.}
\usage{gtkTextIterGetChar(object)}
\arguments{\item{\verb{object}}{[\verb{\link{GtkTextIter}}]  an iterator}}
\value{[numeric]  a Unicode character, or 0 if \code{iter} is not dereferenceable}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
