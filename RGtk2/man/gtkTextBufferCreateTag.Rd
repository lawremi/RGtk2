\alias{gtkTextBufferCreateTag}
\name{gtkTextBufferCreateTag}
\title{gtkTextBufferCreateTag}
\description{Creates a tag and adds it to the tag table for \code{buffer}.
Equivalent to calling \code{\link{gtkTextTagNew}} and then adding the
tag to the buffer's tag table, so the ref count will be equal to one.}
\usage{gtkTextBufferCreateTag(object, tag.name, ...)}
\arguments{\item{\code{...}}{[character]  name of the new tag, or \code{NULL}}}
\details{If \code{tag.name} is \code{NULL}, the tag is anonymous.
  
If \code{tag.name} is non-\code{NULL}, a tag called \code{tag.name} must not already
exist in the tag table for this buffer.
  
The \code{first.property.name} argument and subsequent arguments are a list
of properties to set on the tag, as with \code{\link{gObjectSet}}.  }
\value{[\code{\link{GtkTextTag}}]  a new tag}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
