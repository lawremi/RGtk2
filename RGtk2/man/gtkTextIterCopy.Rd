\alias{gtkTextIterCopy}
\name{gtkTextIterCopy}
\title{gtkTextIterCopy}
\description{Creates a dynamically-allocated copy of an iterator. This function
is not useful in applications, because iterators can be copied with a
simple assignment (\code{GtkTextIter i = j;}). The
function is used by language bindings.}
\usage{gtkTextIterCopy(object)}
\arguments{\item{\verb{object}}{an iterator}}
\value{[\code{\link{GtkTextIter}}] a copy of the \code{iter},}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
