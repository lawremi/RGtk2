\alias{gContentTypeIsUnknown}
\name{gContentTypeIsUnknown}
\title{gContentTypeIsUnknown}
\description{Checks if the content type is the generic "unknown" type.
On unix this is the "application/octet-stream" mimetype,
while on win32 it is "*".}
\usage{gContentTypeIsUnknown(type)}
\arguments{\item{\verb{type}}{a content type string.}}
\value{[logical] \code{TRUE} if the type is the unknown type.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
