\alias{gtkTextBufferSetText}
\name{gtkTextBufferSetText}
\title{gtkTextBufferSetText}
\description{Deletes current contents of \code{buffer}, and inserts \code{text} instead. If
\code{len} is -1, \code{text} must be nul-terminated. \code{text} must be valid UTF-8.}
\usage{gtkTextBufferSetText(object, text, len = -1)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkTextBuffer}}}
\item{\verb{text}}{UTF-8 text to insert}
\item{\verb{len}}{length of \code{text} in bytes}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
