\alias{gBufferedOutputStreamSetAutoGrow}
\name{gBufferedOutputStreamSetAutoGrow}
\title{gBufferedOutputStreamSetAutoGrow}
\description{Sets whether or not the \code{stream}'s buffer should automatically grow.
If \code{auto.grow} is true, then each write will just make the buffer
larger, and you must manually flush the buffer to actually write out
the data to the underlying stream.}
\usage{gBufferedOutputStreamSetAutoGrow(object, auto.grow)}
\arguments{
\item{\verb{object}}{a \code{\link{GBufferedOutputStream}}.}
\item{\verb{auto.grow}}{a \verb{logical}.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
