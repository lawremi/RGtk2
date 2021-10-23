\alias{gdk-pixbuf-File-saving}
\alias{GdkPixbufSaveFunc}
\name{gdk-pixbuf-File-saving}
\title{File saving}
\description{Saving a pixbuf to a file.}
\section{Methods and Functions}{
\code{\link{gdkPixbufSavev}(object, filename, type, option.keys, option.values, .errwarn = TRUE)}\cr
\code{\link{gdkPixbufSave}(object, filename, type, ..., .errwarn = TRUE)}\cr
\code{\link{gdkPixbufSaveToCallback}(object, save.func, user.data, type, ..., .errwarn = TRUE)}\cr
\code{\link{gdkPixbufSaveToCallbackv}(object, save.func, user.data, type, option.keys, option.values, .errwarn = TRUE)}\cr
\code{\link{gdkPixbufSaveToBuffer}(object, type, ..., .errwarn = TRUE)}\cr
\code{\link{gdkPixbufSaveToBufferv}(object, type, option.keys, option.values, .errwarn = TRUE)}\cr
\code{\link{gdkPixbufSaveToStream}(object, stream, type, cancellable, .errwarn = TRUE)}\cr
}
\section{Detailed Description}{These functions allow to save a \code{\link{GdkPixbuf}} in a number of 
file formats. The formatted data can be written to a file
or to a memory buffer. &gdk-pixbuf; can also call a user-defined
callback on the data, which allows to e.g. write the image 
to a socket or store it in a database.}
\section{User Functions}{\describe{\item{\code{GdkPixbufSaveFunc(buf, count, error, data)}}{
Specifies the type of the function passed to
\code{\link{gdkPixbufSaveToCallback}}.  It is called once for each block of
bytes that is "written" by \code{\link{gdkPixbufSaveToCallback}}.  If
successful it should return \code{TRUE}.  If an error occurs it should set
\code{error} and return \code{FALSE}, in which case \code{\link{gdkPixbufSaveToCallback}}
will fail with the same error.
  Since 2.4

\describe{
\item{\code{buf}}{bytes to be written.}
\item{\code{count}}{number of bytes in \code{buf}.}
\item{\code{error}}{A location to return an error. \emph{[  \acronym{out}  ]}}
\item{\code{data}}{user data passed to \code{\link{gdkPixbufSaveToCallback}}. \emph{[  \acronym{closure}  ]}}
}

\emph{Returns:} [logical] \code{TRUE} if successful, \code{FALSE} (with \code{error} set) if failed.

}}}
\references{\url{https://developer-old.gnome.org/gdk-pixbuf/stable/gdk-pixbuf-File-saving.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
