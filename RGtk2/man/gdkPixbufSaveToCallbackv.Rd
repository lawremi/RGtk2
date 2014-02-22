\alias{gdkPixbufSaveToCallbackv}
\name{gdkPixbufSaveToCallbackv}
\title{gdkPixbufSaveToCallbackv}
\description{Saves pixbuf to a callback in format \code{type}, which is currently "jpeg",
"png", "tiff", "ico" or "bmp".  If \code{error} is set, \code{FALSE} will be returned. See
\code{\link{gdkPixbufSaveToCallback}} for more details.}
\usage{gdkPixbufSaveToCallbackv(object, save.func, user.data, type, 
    option.keys, option.values, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a \code{\link{GdkPixbuf}}.}
\item{\verb{save.func}}{a function that is called to save each block of data that
the save routine generates.}
\item{\verb{user.data}}{user data to pass to the save function.}
\item{\verb{type}}{name of file format.}
\item{\verb{option.keys}}{name of options to set, \code{NULL}-terminated}
\item{\verb{option.values}}{values for named options}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{Since 2.4}
\value{
A list containing the following elements:
\item{retval}{[logical] whether an error was set}
\item{\verb{error}}{return location for error, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
