\alias{gtkTextBufferApplyTag}
\name{gtkTextBufferApplyTag}
\title{gtkTextBufferApplyTag}
\description{Emits the "apply_tag" signal on \code{buffer}. The default
handler for the signal applies \code{tag} to the given range.
\code{start} and \code{end} do not have to be in order.}
\usage{gtkTextBufferApplyTag(object, tag, start, end)}
\arguments{
\item{\code{object}}{[\code{\link{GtkTextBuffer}}]  a \code{\link{GtkTextBuffer}}}
\item{\code{tag}}{[\code{\link{GtkTextTag}}]  a \code{\link{GtkTextTag}}}
\item{\code{start}}{[\code{\link{GtkTextIter}}]  one bound of range to be tagged}
\item{\code{end}}{[\code{\link{GtkTextIter}}]  other bound of range to be tagged}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
