\alias{gtkTextBufferRemoveTagByName}
\name{gtkTextBufferRemoveTagByName}
\title{gtkTextBufferRemoveTagByName}
\description{Calls \code{\link{gtkTextTagTableLookup}} on the buffer's tag table to
get a \code{\link{GtkTextTag}}, then calls \code{\link{gtkTextBufferRemoveTag}}.}
\usage{gtkTextBufferRemoveTagByName(object, name, start, end)}
\arguments{
\item{\code{object}}{[\code{\link{GtkTextBuffer}}]  a \code{\link{GtkTextBuffer}}}
\item{\code{name}}{[character]  name of a \code{\link{GtkTextTag}}}
\item{\code{start}}{[\code{\link{GtkTextIter}}]  one bound of range to be untagged}
\item{\code{end}}{[\code{\link{GtkTextIter}}]  other bound of range to be untagged}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
