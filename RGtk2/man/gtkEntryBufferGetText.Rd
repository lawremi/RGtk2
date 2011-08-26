\alias{gtkEntryBufferGetText}
\name{gtkEntryBufferGetText}
\title{gtkEntryBufferGetText}
\description{Retrieves the contents of the buffer.}
\usage{gtkEntryBufferGetText(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkEntryBuffer}}}}
\details{The memory pointer returned by this call will not change
unless this object emits a signal, or is finalized.
  Since 2.18}
\value{[character] a pointer to the contents of the widget as a
string. This string points to internally allocated
storage in the buffer and must not be freed, modified or
stored.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
