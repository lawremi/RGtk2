\alias{gtkTextBufferRemoveAllTags}
\name{gtkTextBufferRemoveAllTags}
\title{gtkTextBufferRemoveAllTags}
\description{Removes all tags in the range between \code{start} and \code{end}.  Be careful
with this function; it could remove tags added in code unrelated to
the code you're currently writing. That is, using this function is
probably a bad idea if you have two or more unrelated code sections
that add tags.}
\usage{gtkTextBufferRemoveAllTags(object, start, end)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkTextBuffer}}}
\item{\verb{start}}{one bound of range to be untagged}
\item{\verb{end}}{other bound of range to be untagged}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
