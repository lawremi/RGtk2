\alias{gtkTextBufferRemoveTag}
\name{gtkTextBufferRemoveTag}
\title{gtkTextBufferRemoveTag}
\description{Emits the "remove_tag" signal. The default handler for the signal
removes all occurrences of \code{tag} from the given range. \code{start} and
\code{end} don't have to be in order.}
\usage{gtkTextBufferRemoveTag(object, tag, start, end)}
\arguments{
\item{\code{object}}{[\code{\link{GtkTextBuffer}}]  a \code{\link{GtkTextBuffer}}}
\item{\code{tag}}{[\code{\link{GtkTextTag}}]  a \code{\link{GtkTextTag}}}
\item{\code{start}}{[\code{\link{GtkTextIter}}]  one bound of range to be untagged}
\item{\code{end}}{[\code{\link{GtkTextIter}}]  other bound of range to be untagged}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
