\alias{gtkTextBufferDeserializeSetCanCreateTags}
\name{gtkTextBufferDeserializeSetCanCreateTags}
\title{gtkTextBufferDeserializeSetCanCreateTags}
\description{Use this function to allow a rich text deserialization function to
create new tags in the receiving buffer. Note that using this
function is almost always a bad idea, because the rich text
functions you register should know how to map the rich text format
they handler to your text buffers set of tags.}
\usage{gtkTextBufferDeserializeSetCanCreateTags(object, format, can.create.tags)}
\arguments{
\item{\code{object}}{[\code{\link{GtkTextBuffer}}]  a \code{\link{GtkTextBuffer}}}
\item{\code{format}}{[\code{\link{GdkAtom}}]  a \code{\link{GdkAtom}} representing a registered rich text format}
\item{\code{can.create.tags}}{[logical]  whether deserializing this format may create tags}
}
\details{The ability of creating new (arbitrary!) tags in the receiving buffer
is meant for special rich text formats like the internal one that
is registered using \code{\link{gtkTextBufferRegisterDeserializeTagset}},
because that format is essentially a dump of the internal structure
of the source buffer, including its tag names.
  
You should allow creation of tags only if you know what you are
doing, e.g. if you defined a tagset name for your application
suite's text buffers and you know that it's fine to receive new
tags from these buffers, because you know that your application can
handle the newly created tags.  

  Since  2.10}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
