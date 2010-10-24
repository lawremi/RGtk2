\alias{gDataInputStreamSetNewlineType}
\name{gDataInputStreamSetNewlineType}
\title{gDataInputStreamSetNewlineType}
\description{Sets the newline type for the \code{stream}.}
\usage{gDataInputStreamSetNewlineType(object, type)}
\arguments{
\item{\verb{object}}{a \code{\link{GDataInputStream}}.}
\item{\verb{type}}{the type of new line return as \code{\link{GDataStreamNewlineType}}.}
}
\details{Note that using G_DATA_STREAM_NEWLINE_TYPE_ANY is slightly unsafe. If a read
chunk ends in "CR" we must read an additional byte to know if this is "CR" or
"CR LF", and this might block if there is no more data availible.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
