\alias{gFileIOStreamGetEtag}
\name{gFileIOStreamGetEtag}
\title{gFileIOStreamGetEtag}
\description{Gets the entity tag for the file when it has been written.
This must be called after the stream has been written
and closed, as the etag can change while writing.}
\usage{gFileIOStreamGetEtag(object)}
\arguments{\item{\verb{object}}{a \code{\link{GFileIOStream}}.}}
\details{Since 2.22}
\value{[char] the entity tag for the stream.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
