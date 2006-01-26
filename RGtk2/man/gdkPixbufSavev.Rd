\alias{gdkPixbufSavev}
\name{gdkPixbufSavev}
\title{gdkPixbufSavev}
\description{Saves pixbuf to a file in \code{type}, which is currently "jpeg", "png", "ico" or "bmp".
If \code{error} is set, \code{FALSE} will be returned. 
See \code{\link{gdkPixbufSave}} for more details.}
\usage{gdkPixbufSavev(object, filename, type, option.keys, option.values, .errwarn = TRUE)}
\arguments{
\item{\code{object}}{[\code{\link{GdkPixbuf}}]  a \code{\link{GdkPixbuf}}.}
\item{\code{filename}}{[char]  name of file to save.}
\item{\code{type}}{[char]  name of file format.}
\item{\code{option.keys}}{[char]  name of options to set, \code{NULL}-terminated}
\item{\code{option.values}}{[char]  values for named options}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\value{
A list containing the following elements:
\item{retval}{[logical]  whether an error was set}
\item{\code{error}}{[\code{\link{GError}}]  return location for error, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
