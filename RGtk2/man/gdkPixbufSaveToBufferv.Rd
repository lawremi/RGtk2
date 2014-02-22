\alias{gdkPixbufSaveToBufferv}
\name{gdkPixbufSaveToBufferv}
\title{gdkPixbufSaveToBufferv}
\description{Saves pixbuf to a new buffer in format \code{type}, which is currently "jpeg",
"tiff", "png", "ico" or "bmp".  See \code{\link{gdkPixbufSaveToBuffer}} 
for more details.}
\usage{gdkPixbufSaveToBufferv(object, type, option.keys, option.values, 
    .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a \code{\link{GdkPixbuf}}.}
\item{\verb{type}}{name of file format.}
\item{\verb{option.keys}}{name of options to set, \code{NULL}-terminated}
\item{\verb{option.values}}{values for named options}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{Since 2.4}
\value{
A list containing the following elements:
\item{retval}{[logical] whether an error was set}
\item{\verb{buffer}}{location to receive a pointer to the new buffer.}
\item{\verb{buffer.size}}{location to receive the size of the new buffer.}
\item{\verb{error}}{return location for error, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
