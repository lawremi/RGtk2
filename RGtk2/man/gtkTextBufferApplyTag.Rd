\alias{gtkTextBufferApplyTag}
\name{gtkTextBufferApplyTag}
\title{gtkTextBufferApplyTag}
\description{Emits the "apply-tag" signal on \code{buffer}. The default
handler for the signal applies \code{tag} to the given range.
\code{start} and \code{end} do not have to be in order.}
\usage{gtkTextBufferApplyTag(object, tag, start, end)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkTextBuffer}}}
\item{\verb{tag}}{a \code{\link{GtkTextTag}}}
\item{\verb{start}}{one bound of range to be tagged}
\item{\verb{end}}{other bound of range to be tagged}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
