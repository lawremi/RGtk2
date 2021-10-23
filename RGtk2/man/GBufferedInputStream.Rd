\alias{GBufferedInputStream}
\alias{gBufferedInputStream}
\name{GBufferedInputStream}
\title{GBufferedInputStream}
\description{Buffered Input Stream}
\section{Methods and Functions}{
\code{\link{gBufferedInputStreamNew}(base.stream = NULL)}\cr
\code{\link{gBufferedInputStreamNewSized}(base.stream, size)}\cr
\code{\link{gBufferedInputStreamGetBufferSize}(object)}\cr
\code{\link{gBufferedInputStreamSetBufferSize}(object, size)}\cr
\code{\link{gBufferedInputStreamGetAvailable}(object)}\cr
\code{\link{gBufferedInputStreamPeekBuffer}(object)}\cr
\code{\link{gBufferedInputStreamFill}(object, count, cancellable = NULL, .errwarn = TRUE)}\cr
\code{\link{gBufferedInputStreamFillAsync}(object, count, io.priority = 0, cancellable = NULL, callback, user.data = NULL)}\cr
\code{\link{gBufferedInputStreamFillFinish}(object, result, .errwarn = TRUE)}\cr
\code{\link{gBufferedInputStreamReadByte}(object, cancellable = NULL, .errwarn = TRUE)}\cr
\code{gBufferedInputStream(base.stream, size)}
}
\section{Hierarchy}{\preformatted{GObject
   +----GInputStream
         +----GFilterInputStream
               +----GBufferedInputStream
                     +----GDataInputStream}}
\section{Detailed Description}{Buffered input stream implements \code{\link{GFilterInputStream}} and provides 
for buffered reads. 
  
By default, \code{\link{GBufferedInputStream}}'s buffer size is set at 4 kilobytes.
  
To create a buffered input stream, use \code{\link{gBufferedInputStreamNew}}, 
or \code{\link{gBufferedInputStreamNewSized}} to specify the buffer's size at 
construction.
  
To get the size of a buffer within a buffered input stream, use 
\code{\link{gBufferedInputStreamGetBufferSize}}. To change the size of a 
buffered input stream's buffer, use
\code{\link{gBufferedInputStreamSetBufferSize}}. Note that the buffer's size 
cannot be reduced below the size of the data within the buffer.}
\section{Structures}{\describe{\item{\verb{GBufferedInputStream}}{
Implements \code{\link{GFilterInputStream}} with a sized input buffer.

}}}
\section{Convenient Construction}{\code{gBufferedInputStream} is the result of collapsing the constructors of \code{GBufferedInputStream} (\code{\link{gBufferedInputStreamNew}}, \code{\link{gBufferedInputStreamNewSized}}) and accepts a subset of its arguments matching the required arguments of one of its delegate constructors.}
\section{Properties}{\describe{\item{\verb{buffer-size} [numeric : Read / Write / Construct]}{

The size of the backend buffer.  Allowed values: >= 1  Default value: 4096

}}}
\references{\url{https://developer-old.gnome.org/gio/stable/GBufferedInputStream.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
