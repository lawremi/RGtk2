\alias{gtkTextBufferGetCharCount}
\name{gtkTextBufferGetCharCount}
\title{gtkTextBufferGetCharCount}
\description{Gets the number of characters in the buffer; note that characters
and bytes are not the same, you can't e.g. expect the contents of
the buffer in string form to be this many bytes long. The character
count is cached, so this function is very fast.}
\usage{gtkTextBufferGetCharCount(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkTextBuffer}}}}
\value{[integer] number of characters in the buffer}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
