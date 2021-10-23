\alias{GInputStream}
\name{GInputStream}
\title{GInputStream}
\description{Base class for implementing streaming input}
\section{Methods and Functions}{
\code{\link{gInputStreamRead}(object, count, cancellable = NULL, .errwarn = TRUE)}\cr
\code{\link{gInputStreamReadAll}(object, count, cancellable = NULL, .errwarn = TRUE)}\cr
\code{\link{gInputStreamSkip}(object, count, cancellable = NULL, .errwarn = TRUE)}\cr
\code{\link{gInputStreamClose}(object, cancellable = NULL, .errwarn = TRUE)}\cr
\code{\link{gInputStreamReadAsync}(object, count, io.priority = 0, cancellable = NULL, callback, user.data = NULL)}\cr
\code{\link{gInputStreamReadFinish}(object, result, .errwarn = TRUE)}\cr
\code{\link{gInputStreamSkipAsync}(object, count, io.priority = 0, cancellable = NULL, callback, user.data = NULL)}\cr
\code{\link{gInputStreamSkipFinish}(object, result, .errwarn = TRUE)}\cr
\code{\link{gInputStreamCloseAsync}(object, io.priority = 0, cancellable = NULL, callback, user.data = NULL)}\cr
\code{\link{gInputStreamCloseFinish}(object, result, .errwarn = TRUE)}\cr
\code{\link{gInputStreamIsClosed}(object)}\cr
\code{\link{gInputStreamHasPending}(object)}\cr
\code{\link{gInputStreamSetPending}(object, .errwarn = TRUE)}\cr
\code{\link{gInputStreamClearPending}(object)}\cr

}
\section{Hierarchy}{\preformatted{GObject
   +----GInputStream
         +----GFilterInputStream
         +----GFileInputStream
         +----GMemoryInputStream
         +----GUnixInputStream}}
\section{Detailed Description}{GInputStream has functions to read from a stream (\code{\link{gInputStreamRead}}),
to close a stream (\code{\link{gInputStreamClose}}) and to skip some content
(\code{\link{gInputStreamSkip}}). 
  
To copy the content of an input stream to an output stream without 
manually handling the reads and writes, use \code{\link{gOutputStreamSplice}}. 
  
All of these functions have async variants too.}
\section{Structures}{\describe{\item{\verb{GInputStream}}{
Base class for streaming input operations.

}}}
\references{\url{https://developer-old.gnome.org/gio/stable/GInputStream.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
