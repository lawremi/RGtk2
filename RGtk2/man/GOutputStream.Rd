\alias{GOutputStream}
\alias{GOutputStreamSpliceFlags}
\name{GOutputStream}
\title{GOutputStream}
\description{Base class for implementing streaming output}
\section{Methods and Functions}{
\code{\link{gOutputStreamWrite}(object, buffer, cancellable = NULL, .errwarn = TRUE)}\cr
\code{\link{gOutputStreamWriteAll}(object, buffer, bytes.written, cancellable = NULL, .errwarn = TRUE)}\cr
\code{\link{gOutputStreamSplice}(object, source, flags = "G_OUTPUT_STREAM_SPLICE_NONE", cancellable = NULL, .errwarn = TRUE)}\cr
\code{\link{gOutputStreamFlush}(object, cancellable = NULL, .errwarn = TRUE)}\cr
\code{\link{gOutputStreamClose}(object, cancellable = NULL, .errwarn = TRUE)}\cr
\code{\link{gOutputStreamWriteAsync}(object, buffer, io.priority = 0, cancellable = NULL, callback, user.data = NULL)}\cr
\code{\link{gOutputStreamWriteFinish}(object, result, .errwarn = TRUE)}\cr
\code{\link{gOutputStreamSpliceAsync}(object, source, flags = "G_OUTPUT_STREAM_SPLICE_NONE", io.priority = 0, cancellable = NULL, callback, user.data = NULL)}\cr
\code{\link{gOutputStreamSpliceFinish}(object, result, .errwarn = TRUE)}\cr
\code{\link{gOutputStreamFlushAsync}(object, io.priority = 0, cancellable = NULL, callback, user.data = NULL)}\cr
\code{\link{gOutputStreamFlushFinish}(object, result, .errwarn = TRUE)}\cr
\code{\link{gOutputStreamCloseAsync}(object, io.priority = 0, cancellable = NULL, callback, user.data = NULL)}\cr
\code{\link{gOutputStreamCloseFinish}(object, result, .errwarn = TRUE)}\cr
\code{\link{gOutputStreamIsClosed}(object)}\cr
\code{\link{gOutputStreamHasPending}(object)}\cr
\code{\link{gOutputStreamSetPending}(object, .errwarn = TRUE)}\cr
\code{\link{gOutputStreamClearPending}(object)}\cr

}
\section{Hierarchy}{\preformatted{
GFlags
   +----GOutputStreamSpliceFlags
GObject
   +----GOutputStream
         +----GFilterOutputStream
         +----GFileOutputStream
         +----GMemoryOutputStream
         +----GUnixOutputStream
}}
\section{Detailed Description}{GOutputStream has functions to write to a stream (\code{\link{gOutputStreamWrite}}),
to close a stream (\code{\link{gOutputStreamClose}}) and to flush pending writes
(\code{\link{gOutputStreamFlush}}). 
  
To copy the content of an input stream to an output stream without 
manually handling the reads and writes, use \code{\link{gOutputStreamSplice}}. 
  
All of these functions have async variants too.}
\section{Structures}{\describe{\item{\verb{GOutputStream}}{
Base class for writing output.
  
All classes derived from GOutputStream should implement synchronous
writing, splicing, flushing and closing streams, but may implement
asynchronous versions.

}}}
\section{Enums and Flags}{\describe{\item{\verb{GOutputStreamSpliceFlags}}{
GOutputStreamSpliceFlags determine how streams should be spliced.

\describe{
\item{\verb{none}}{Do not close either stream.}
\item{\verb{close-source}}{Close the source stream after
    the splice.}
\item{\verb{close-target}}{Close the target stream after
    the splice.}
}

}}}
\references{\url{https://developer-old.gnome.org/gio/stable/GOutputStream.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
