\alias{gtkTextIterSetVisibleLineIndex}
\name{gtkTextIterSetVisibleLineIndex}
\title{gtkTextIterSetVisibleLineIndex}
\description{Like \code{\link{gtkTextIterSetLineIndex}}, but the index is in visible
bytes, i.e. text with a tag making it invisible is not counted
in the index.}
\usage{gtkTextIterSetVisibleLineIndex(object, byte.on.line)}
\arguments{
\item{\code{object}}{[\code{\link{GtkTextIter}}]  a \code{\link{GtkTextIter}}}
\item{\code{byte.on.line}}{[integer]  a byte index}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
