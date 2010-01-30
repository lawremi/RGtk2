\alias{gtkTextIterSetVisibleLineOffset}
\name{gtkTextIterSetVisibleLineOffset}
\title{gtkTextIterSetVisibleLineOffset}
\description{Like \code{\link{gtkTextIterSetLineOffset}}, but the offset is in visible
characters, i.e. text with a tag making it invisible is not
counted in the offset.}
\usage{gtkTextIterSetVisibleLineOffset(object, char.on.line)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkTextIter}}]  a \verb{\link{GtkTextIter}}}
\item{\verb{char.on.line}}{[integer]  a character offset}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
