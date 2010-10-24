\alias{gtkTextBufferRemoveTagByName}
\name{gtkTextBufferRemoveTagByName}
\title{gtkTextBufferRemoveTagByName}
\description{Calls \code{\link{gtkTextTagTableLookup}} on the buffer's tag table to
get a \code{\link{GtkTextTag}}, then calls \code{\link{gtkTextBufferRemoveTag}}.}
\usage{gtkTextBufferRemoveTagByName(object, name, start, end)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkTextBuffer}}}
\item{\verb{name}}{name of a \code{\link{GtkTextTag}}}
\item{\verb{start}}{one bound of range to be untagged}
\item{\verb{end}}{other bound of range to be untagged}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
