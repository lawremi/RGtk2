\alias{gdkPropertyGet}
\name{gdkPropertyGet}
\title{gdkPropertyGet}
\description{Retrieves a portion of the contents of a property. If the
property does not exist, then the function returns \code{FALSE},
and \code{GDK_NONE} will be stored in \code{actual.property.type}.}
\usage{gdkPropertyGet(object, property, type, offset, length, pdelete)}
\arguments{
\item{\verb{object}}{a \code{\link{GdkWindow}}.}
\item{\verb{property}}{the property to retrieve.}
\item{\verb{type}}{the desired property type, or \code{GDK_NONE}, if any type of data
is acceptable. If this does not match the actual
type, then \code{actual.format} and \code{actual.length} will
be filled in, a warning will be printed to stderr
and no data will be returned.}
\item{\verb{offset}}{the offset into the property at which to begin
retrieving data, in 4 byte units.}
\item{\verb{length}}{the length of the data to retrieve in bytes.  Data is
considered to be retrieved in 4 byte chunks, so \code{length}
will be rounded up to the next highest 4 byte boundary
(so be careful not to pass a value that might overflow
when rounded up).}
\item{\verb{pdelete}}{if \code{TRUE}, delete the property after retrieving the
data.}
}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} if data was successfully received and stored
in \code{data}, otherwise \code{FALSE}.}
\item{\verb{actual.property.type}}{location to store the actual type of
the property.}
\item{\verb{actual.format}}{location to store the actual return format of the
data; either 8, 16 or 32 bits.}
\item{\verb{actual.length}}{location to store the length of the retrieved data, in
bytes.  Data returned in the 32 bit format is stored
in a long variable, so the actual number of 32 bit
elements should be be calculated via
\code{actual.length}/sizeof(glong) to ensure portability to
64 bit systems.}
\item{\verb{data}}{location to store a pointer to the data. The retrieved
data should be freed with \code{gFree()} when you are finished
using it.}
}
\note{The \code{xgetwindowproperty()} function that \code{\link{gdkPropertyGet}}
uses has a very confusing and complicated set of semantics.
Unfortunately, \code{\link{gdkPropertyGet}} makes the situation
worse instead of better (the semantics should be considered
undefined), and also prints warnings to stderr in cases where it
should return a useful error to the program. You are advised to use
\code{xgetwindowproperty()} directly until a replacement function for
\code{\link{gdkPropertyGet}}
is provided.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
