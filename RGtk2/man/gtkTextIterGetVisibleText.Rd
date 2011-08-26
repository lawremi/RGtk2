\alias{gtkTextIterGetVisibleText}
\name{gtkTextIterGetVisibleText}
\title{gtkTextIterGetVisibleText}
\description{Like \code{\link{gtkTextIterGetText}}, but invisible text is not included.
Invisible text is usually invisible because a \code{\link{GtkTextTag}} with the
"invisible" attribute turned on has been applied to it.}
\usage{gtkTextIterGetVisibleText(object, end)}
\arguments{
\item{\verb{object}}{iterator at start of range}
\item{\verb{end}}{iterator at end of range}
}
\value{[character] string containing visible text in the range}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
