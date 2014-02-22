\alias{gtkTextBufferDeserialize}
\name{gtkTextBufferDeserialize}
\title{gtkTextBufferDeserialize}
\description{This function deserializes rich text in format \code{format} and inserts
it at \code{iter}.}
\usage{gtkTextBufferDeserialize(object, content.buffer, format, iter, 
    data, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{the \code{\link{GtkTextBuffer}} \code{format} is registered with}
\item{\verb{content.buffer}}{the \code{\link{GtkTextBuffer}} to deserialize into}
\item{\verb{format}}{the rich text format to use for deserializing}
\item{\verb{iter}}{insertion point for the deserialized text}
\item{\verb{data}}{data to deserialize}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{\code{format}s to be used must be registered using
\code{\link{gtkTextBufferRegisterDeserializeFormat}} or
\code{\link{gtkTextBufferRegisterDeserializeTagset}} beforehand.
  Since 2.10}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} on success, \code{FALSE} otherwise.}
\item{\verb{error}}{return location for a \code{\link{GError}}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
