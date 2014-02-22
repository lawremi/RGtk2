\alias{gdkPixbufSavev}
\name{gdkPixbufSavev}
\title{gdkPixbufSavev}
\description{Saves pixbuf to a file in \code{type}, which is currently "jpeg", "png", "tiff", "ico" or "bmp".
If \code{error} is set, \code{FALSE} will be returned. 
See \code{\link{gdkPixbufSave}} for more details.}
\usage{gdkPixbufSavev(object, filename, type, option.keys, option.values, 
    .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a \code{\link{GdkPixbuf}}.}
\item{\verb{filename}}{name of file to save.}
\item{\verb{type}}{name of file format.}
\item{\verb{option.keys}}{name of options to set, \code{NULL}-terminated. \emph{[  \acronym{array}   zero-terminated=1]}}
\item{\verb{option.values}}{values for named options. \emph{[  \acronym{array}   zero-terminated=1]}}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\value{
A list containing the following elements:
\item{retval}{[logical] whether an error was set}
\item{\verb{error}}{return location for error, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
