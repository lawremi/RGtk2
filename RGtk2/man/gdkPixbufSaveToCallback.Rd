\alias{gdkPixbufSaveToCallback}
\name{gdkPixbufSaveToCallback}
\title{gdkPixbufSaveToCallback}
\description{Saves pixbuf in format \code{type} by feeding the produced data to a 
callback. Can be used when you want to store the image to something 
other than a file, such as an in-memory buffer or a socket.  
If \code{error} is set, \code{FALSE} will be returned. Possible errors
include those in the \verb{GDK_PIXBUF_ERROR} domain and whatever the save
function generates.}
\usage{gdkPixbufSaveToCallback(object, save.func, user.data, type, ..., .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{[\verb{\link{GdkPixbuf}}]  a \verb{\link{GdkPixbuf}}.}
\item{\verb{save.func}}{[\verb{\link{GdkPixbufSaveFunc}}]  a function that is called to save each block of data that
  the save routine generates.}
\item{\verb{user.data}}{[R object]  user data to pass to the save function.}
\item{\verb{type}}{[char]  name of file format.}
\item{\verb{...}}{ list of key-value save options}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{See \code{\link{gdkPixbufSave}} for more details.  

  Since  2.4}
\value{
A list containing the following elements:
\item{retval}{[logical]  whether an error was set}
\item{\verb{error}}{[\verb{\link{GError}}]  return location for error, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
