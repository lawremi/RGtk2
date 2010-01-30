\alias{gtkTextBufferDeserialize}
\name{gtkTextBufferDeserialize}
\title{gtkTextBufferDeserialize}
\description{This function deserializes rich text in format \code{format} and inserts
it at \code{iter}.}
\usage{gtkTextBufferDeserialize(object, content.buffer, format, iter, data, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkTextBuffer}}]  the \verb{\link{GtkTextBuffer}} \code{format} is registered with}
\item{\verb{content.buffer}}{[\verb{\link{GtkTextBuffer}}]  the \verb{\link{GtkTextBuffer}} to deserialize into}
\item{\verb{format}}{[\verb{\link{GdkAtom}}]  the rich text format to use for deserializing}
\item{\verb{iter}}{[\verb{\link{GtkTextIter}}]  insertion point for the deserialized text}
\item{\verb{data}}{[raw]  data to deserialize}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{\code{format}s to be used must be registered using
\code{\link{gtkTextBufferRegisterDeserializeFormat}} or
\code{\link{gtkTextBufferRegisterDeserializeTagset}} beforehand.  

  Since  2.10}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} on success, \code{FALSE} otherwise.}
\item{\verb{error}}{[\verb{\link{GError}}]  return location for a \verb{\link{GError}}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
