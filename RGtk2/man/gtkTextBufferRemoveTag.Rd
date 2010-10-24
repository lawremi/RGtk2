\alias{gtkTextBufferRemoveTag}
\name{gtkTextBufferRemoveTag}
\title{gtkTextBufferRemoveTag}
\description{Emits the "remove-tag" signal. The default handler for the signal
removes all occurrences of \code{tag} from the given range. \code{start} and
\code{end} don't have to be in order.}
\usage{gtkTextBufferRemoveTag(object, tag, start, end)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkTextBuffer}}}
\item{\verb{tag}}{a \code{\link{GtkTextTag}}}
\item{\verb{start}}{one bound of range to be untagged}
\item{\verb{end}}{other bound of range to be untagged}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
