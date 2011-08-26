\alias{gMemoryOutputStreamGetData}
\name{gMemoryOutputStreamGetData}
\title{gMemoryOutputStreamGetData}
\description{Gets any loaded data from the \code{ostream}. }
\usage{gMemoryOutputStreamGetData(object)}
\arguments{\item{\verb{object}}{a \code{\link{GMemoryOutputStream}}}}
\details{Note that the returned pointer may become invalid on the next 
write or truncate operation on the stream.}
\value{[R object] pointer to the stream's data}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
