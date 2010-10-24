\alias{gtkTextIterSetVisibleLineIndex}
\name{gtkTextIterSetVisibleLineIndex}
\title{gtkTextIterSetVisibleLineIndex}
\description{Like \code{\link{gtkTextIterSetLineIndex}}, but the index is in visible
bytes, i.e. text with a tag making it invisible is not counted
in the index.}
\usage{gtkTextIterSetVisibleLineIndex(object, byte.on.line)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkTextIter}}}
\item{\verb{byte.on.line}}{a byte index}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
