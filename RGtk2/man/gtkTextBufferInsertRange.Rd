\alias{gtkTextBufferInsertRange}
\name{gtkTextBufferInsertRange}
\title{gtkTextBufferInsertRange}
\description{Copies text, tags, and pixbufs between \code{start} and \code{end} (the order
of \code{start} and \code{end} doesn't matter) and inserts the copy at \code{iter}.
Used instead of simply getting/inserting text because it preserves
images and tags. If \code{start} and \code{end} are in a different buffer from
\code{buffer}, the two buffers must share the same tag table.}
\usage{gtkTextBufferInsertRange(object, iter, start, end)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkTextBuffer}}}
\item{\verb{iter}}{a position in \code{buffer}}
\item{\verb{start}}{a position in a \code{\link{GtkTextBuffer}}}
\item{\verb{end}}{another position in the same buffer as \code{start}}
}
\details{Implemented via emissions of the insert_text and apply_tag signals,
so expect those.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
