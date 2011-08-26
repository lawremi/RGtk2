\alias{gtkTextIterGetVisibleSlice}
\name{gtkTextIterGetVisibleSlice}
\title{gtkTextIterGetVisibleSlice}
\description{Like \code{\link{gtkTextIterGetSlice}}, but invisible text is not included.
Invisible text is usually invisible because a \code{\link{GtkTextTag}} with the
"invisible" attribute turned on has been applied to it.}
\usage{gtkTextIterGetVisibleSlice(object, end)}
\arguments{
\item{\verb{object}}{iterator at start of range}
\item{\verb{end}}{iterator at end of range}
}
\value{[character] slice of text from the buffer}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
