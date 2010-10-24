\alias{gSocketControlMessageSerialize}
\name{gSocketControlMessageSerialize}
\title{gSocketControlMessageSerialize}
\description{Converts the data in the message to bytes placed in the
message.}
\usage{gSocketControlMessageSerialize(object, data)}
\arguments{
\item{\verb{object}}{a \code{\link{GSocketControlMessage}}}
\item{\verb{data}}{A buffer to write data to}
}
\details{\code{data} is guaranteed to have enough space to fit the size
returned by \code{\link{gSocketControlMessageGetSize}} on this
object.
  Since 2.22}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
