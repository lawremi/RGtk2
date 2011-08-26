\alias{gFileOutputStreamGetEtag}
\name{gFileOutputStreamGetEtag}
\title{gFileOutputStreamGetEtag}
\description{Gets the entity tag for the file when it has been written.
This must be called after the stream has been written
and closed, as the etag can change while writing.}
\usage{gFileOutputStreamGetEtag(object)}
\arguments{\item{\verb{object}}{a \code{\link{GFileOutputStream}}.}}
\value{[char] the entity tag for the stream.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
