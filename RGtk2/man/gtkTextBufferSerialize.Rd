\alias{gtkTextBufferSerialize}
\name{gtkTextBufferSerialize}
\title{gtkTextBufferSerialize}
\description{This function serializes the portion of text between \code{start}
and \code{end} in the rich text format represented by \code{format}.}
\usage{gtkTextBufferSerialize(object, content.buffer, format, start, end)}
\arguments{
\item{\code{object}}{[\code{\link{GtkTextBuffer}}]  the \code{\link{GtkTextBuffer}} \code{format} is registered with}
\item{\code{content.buffer}}{[\code{\link{GtkTextBuffer}}]  the \code{\link{GtkTextBuffer}} to serialize}
\item{\code{format}}{[\code{\link{GdkAtom}}]  the rich text format to use for serializing}
\item{\code{start}}{[\code{\link{GtkTextIter}}]  start of block of text to serialize}
\item{\code{end}}{[\code{\link{GtkTextIter}}]  end of block of test to serialize}
}
\details{\code{format}s to be used must be registered using
\code{\link{gtkTextBufferRegisterSerializeFormat}} or
\code{\link{gtkTextBufferRegisterSerializeTagset}} beforehand.  

  Since  2.10}
\value{
A list containing the following elements:
\item{retval}{[raw]  the serialized data, encoded as \code{format}}
\item{\code{length}}{[numeric]  return location for the length of the serialized data}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
