\alias{gtkTextBufferApplyTag}
\name{gtkTextBufferApplyTag}
\title{gtkTextBufferApplyTag}
\description{Emits the "apply_tag" signal on \code{buffer}. The default
handler for the signal applies \code{tag} to the given range.
\code{start} and \code{end} do not have to be in order.}
\usage{gtkTextBufferApplyTag(object, tag, start, end)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkTextBuffer}}]  a \verb{\link{GtkTextBuffer}}}
\item{\verb{tag}}{[\verb{\link{GtkTextTag}}]  a \verb{\link{GtkTextTag}}}
\item{\verb{start}}{[\verb{\link{GtkTextIter}}]  one bound of range to be tagged}
\item{\verb{end}}{[\verb{\link{GtkTextIter}}]  other bound of range to be tagged}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
