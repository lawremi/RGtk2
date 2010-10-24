\alias{gtkTextBufferApplyTagByName}
\name{gtkTextBufferApplyTagByName}
\title{gtkTextBufferApplyTagByName}
\description{Calls \code{\link{gtkTextTagTableLookup}} on the buffer's tag table to
get a \code{\link{GtkTextTag}}, then calls \code{\link{gtkTextBufferApplyTag}}.}
\usage{gtkTextBufferApplyTagByName(object, name, start, end)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkTextBuffer}}}
\item{\verb{name}}{name of a named \code{\link{GtkTextTag}}}
\item{\verb{start}}{one bound of range to be tagged}
\item{\verb{end}}{other bound of range to be tagged}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
