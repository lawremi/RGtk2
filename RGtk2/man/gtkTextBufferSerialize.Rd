\alias{gtkTextBufferSerialize}
\name{gtkTextBufferSerialize}
\title{gtkTextBufferSerialize}
\description{This function serializes the portion of text between \code{start}
and \code{end} in the rich text format represented by \code{format}.}
\usage{gtkTextBufferSerialize(object, content.buffer, format, start, 
    end)}
\arguments{
\item{\verb{object}}{the \code{\link{GtkTextBuffer}} \code{format} is registered with}
\item{\verb{content.buffer}}{the \code{\link{GtkTextBuffer}} to serialize}
\item{\verb{format}}{the rich text format to use for serializing}
\item{\verb{start}}{start of block of text to serialize}
\item{\verb{end}}{end of block of test to serialize}
}
\details{\code{format}s to be used must be registered using
\code{\link{gtkTextBufferRegisterSerializeFormat}} or
\code{\link{gtkTextBufferRegisterSerializeTagset}} beforehand.
  Since 2.10}
\value{
A list containing the following elements:
\item{retval}{[raw] the serialized data, encoded as \code{format}}
\item{\verb{length}}{return location for the length of the serialized data}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
