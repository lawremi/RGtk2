\alias{gtkTextBufferRemoveTag}
\name{gtkTextBufferRemoveTag}
\title{gtkTextBufferRemoveTag}
\description{Emits the "remove_tag" signal. The default handler for the signal
removes all occurrences of \code{tag} from the given range. \code{start} and
\code{end} don't have to be in order.}
\usage{gtkTextBufferRemoveTag(object, tag, start, end)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkTextBuffer}}]  a \verb{\link{GtkTextBuffer}}}
\item{\verb{tag}}{[\verb{\link{GtkTextTag}}]  a \verb{\link{GtkTextTag}}}
\item{\verb{start}}{[\verb{\link{GtkTextIter}}]  one bound of range to be untagged}
\item{\verb{end}}{[\verb{\link{GtkTextIter}}]  other bound of range to be untagged}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
