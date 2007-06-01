\alias{gdkPixbufSaveToCallbackv}
\name{gdkPixbufSaveToCallbackv}
\title{gdkPixbufSaveToCallbackv}
\description{Saves pixbuf to a callback in format \code{type}, which is currently "jpeg",
"png", "tiff", "ico" or "bmp".  If \code{error} is set, \code{FALSE} will be returned. See
\code{\link{gdkPixbufSaveToCallback}} for more details.}
\usage{gdkPixbufSaveToCallbackv(object, save.func, user.data, type, option.keys, option.values, .errwarn = TRUE)}
\arguments{
\item{\code{object}}{[\code{\link{GdkPixbuf}}]  a \code{\link{GdkPixbuf}}.}
\item{\code{save.func}}{[\code{\link{GdkPixbufSaveFunc}}]  a function that is called to save each block of data that
  the save routine generates.}
\item{\code{user.data}}{[R object]  user data to pass to the save function.}
\item{\code{type}}{[char]  name of file format.}
\item{\code{option.keys}}{[char]  name of options to set, \code{NULL}-terminated}
\item{\code{option.values}}{[char]  values for named options}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{  Since  2.4}
\value{
A list containing the following elements:
\item{retval}{[logical]  whether an error was set}
\item{\code{user.data}}{[R object]  user data to pass to the save function.}
\item{\code{type}}{[char]  name of file format.}
\item{\code{option.keys}}{[char]  name of options to set, \code{NULL}-terminated}
\item{\code{option.values}}{[char]  values for named options}
\item{\code{error}}{[\code{\link{GError}}]  return location for error, or \code{NULL}}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
