\alias{gtkTextBufferApplyTagByName}
\name{gtkTextBufferApplyTagByName}
\title{gtkTextBufferApplyTagByName}
\description{Calls \code{\link{gtkTextTagTableLookup}} on the buffer's tag table to
get a \verb{\link{GtkTextTag}}, then calls \code{\link{gtkTextBufferApplyTag}}.}
\usage{gtkTextBufferApplyTagByName(object, name, start, end)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkTextBuffer}}]  a \verb{\link{GtkTextBuffer}}}
\item{\verb{name}}{[character]  name of a named \verb{\link{GtkTextTag}}}
\item{\verb{start}}{[\verb{\link{GtkTextIter}}]  one bound of range to be tagged}
\item{\verb{end}}{[\verb{\link{GtkTextIter}}]  other bound of range to be tagged}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
