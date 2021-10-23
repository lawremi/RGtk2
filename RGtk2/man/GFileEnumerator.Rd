\alias{GFileEnumerator}
\name{GFileEnumerator}
\title{GFileEnumerator}
\description{Enumerated Files Routines}
\section{Methods and Functions}{
\code{\link{gFileEnumeratorNextFile}(object, cancellable = NULL, .errwarn = TRUE)}\cr
\code{\link{gFileEnumeratorClose}(object, cancellable = NULL, .errwarn = TRUE)}\cr
\code{\link{gFileEnumeratorNextFilesAsync}(object, num.files, io.priority = 0, cancellable = NULL, callback, user.data = NULL)}\cr
\code{\link{gFileEnumeratorNextFilesFinish}(object, result, .errwarn = TRUE)}\cr
\code{\link{gFileEnumeratorCloseAsync}(object, io.priority = 0, cancellable = NULL, callback, user.data = NULL)}\cr
\code{\link{gFileEnumeratorCloseFinish}(object, result, .errwarn = TRUE)}\cr
\code{\link{gFileEnumeratorIsClosed}(object)}\cr
\code{\link{gFileEnumeratorHasPending}(object)}\cr
\code{\link{gFileEnumeratorSetPending}(object, pending)}\cr
\code{\link{gFileEnumeratorGetContainer}(object)}\cr

}
\section{Hierarchy}{\preformatted{GObject
   +----GFileEnumerator}}
\section{Detailed Description}{\code{\link{GFileEnumerator}} allows you to operate on a set of \code{\link{GFile}}s, 
returning a \code{\link{GFileInfo}} structure for each file enumerated (e.g. 
\code{\link{gFileEnumerateChildren}} will return a \code{\link{GFileEnumerator}} for each 
of the children within a directory).
  
To get the next file's information from a \code{\link{GFileEnumerator}}, use 
\code{\link{gFileEnumeratorNextFile}} or its asynchronous version, 
\code{\link{gFileEnumeratorNextFilesAsync}}. Note that the asynchronous 
version will return a list of \code{\link{GFileInfo}}s, whereas the 
synchronous will only return the next file in the enumerator.
  
To close a \code{\link{GFileEnumerator}}, use \code{\link{gFileEnumeratorClose}}, or 
its asynchronous version, \code{\link{gFileEnumeratorCloseAsync}}. Once 
a \code{\link{GFileEnumerator}} is closed, no further actions may be performed 
on it, and it should be freed with \code{gObjectUnref()}.}
\section{Structures}{\describe{\item{\verb{GFileEnumerator}}{
A per matched file iterator.



}}}
\section{Properties}{\describe{\item{\verb{container} [\code{\link{GFile}} : *                : Write / Construct Only]}{

The container that is being enumerated.

}}}
\references{\url{https://developer-old.gnome.org/gio/stable/GFileEnumerator.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
