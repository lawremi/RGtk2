\alias{gdkPixbufSaveToBufferv}
\name{gdkPixbufSaveToBufferv}
\title{gdkPixbufSaveToBufferv}
\description{Saves pixbuf to a new buffer in format \code{type}, which is currently "jpeg",
"png", "ico" or "bmp".  See \code{\link{gdkPixbufSaveToBuffer}} for more details.}
\usage{gdkPixbufSaveToBufferv(object, type, option.keys, option.values, .errwarn = TRUE)}
\arguments{
\item{\code{object}}{[\code{\link{GdkPixbuf}}]  a \code{\link{GdkPixbuf}}.}
\item{\code{type}}{[char]  name of file format.}
\item{\code{option.keys}}{[char]  name of options to set, \code{NULL}-terminated}
\item{\code{option.values}}{[char]  values for named options}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{  Since  2.4}
\value{
A list containing the following elements:
\item{retval}{[logical]  whether an error was set}
\item{\code{buffer}}{[character]  location to receive a pointer to the new buffer.}
\item{\code{buffer.size}}{[numeric]  location to receive the size of the new buffer.}
\item{\code{error}}{[\code{\link{GError}}]  return location for error, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
