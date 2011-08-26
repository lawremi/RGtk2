\alias{gtkTextBufferRegisterSerializeTagset}
\name{gtkTextBufferRegisterSerializeTagset}
\title{gtkTextBufferRegisterSerializeTagset}
\description{This function registers GTK+'s internal rich text serialization
format with the passed \code{buffer}. The internal format does not comply
to any standard rich text format and only works between \code{\link{GtkTextBuffer}}
instances. It is capable of serializing all of a text buffer's tags
and embedded pixbufs.}
\usage{gtkTextBufferRegisterSerializeTagset(object, tagset.name = NULL)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkTextBuffer}}}
\item{\verb{tagset.name}}{an optional tagset name, on \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
}
\details{This function is just a wrapper around
\code{\link{gtkTextBufferRegisterSerializeFormat}}. The mime type used
for registering is "application/x-gtk-text-buffer-rich-text", or
"application/x-gtk-text-buffer-rich-text;format=\code{tagset.name}" if a
\code{tagset.name} was passed.
  
The \code{tagset.name} can be used to restrict the transfer of rich text
to buffers with compatible sets of tags, in order to avoid unknown
tags from being pasted. It is probably the common case to pass an
identifier != \code{NULL} here, since the \code{NULL} tagset requires the
receiving buffer to deal with with pasting of arbitrary tags.
  Since 2.10}
\value{[\code{\link{GdkAtom}}] the \code{\link{GdkAtom}} that corresponds to the newly registered
format's mime-type.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
