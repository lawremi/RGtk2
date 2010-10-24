\alias{gIoErrorFromErrno}
\name{gIoErrorFromErrno}
\title{gIoErrorFromErrno}
\description{Converts errno.h error codes into GIO error codes.}
\usage{gIoErrorFromErrno(err.no)}
\arguments{\item{\verb{err.no}}{Error number as defined in errno.h.}}
\value{[\code{\link{GIOErrorEnum}}] \code{\link{GIOErrorEnum}} value for the given errno.h error number.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
