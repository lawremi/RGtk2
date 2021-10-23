\alias{GIOStream}
\name{GIOStream}
\title{GIOStream}
\description{Base class for implementing read/write streams}
\section{Methods and Functions}{
\code{\link{gIOStreamGetInputStream}(object)}\cr
\code{\link{gIOStreamGetOutputStream}(object)}\cr
\code{\link{gIOStreamClose}(object, cancellable = NULL, .errwarn = TRUE)}\cr
\code{\link{gIOStreamCloseAsync}(object, io.priority, cancellable = NULL, callback, user.data = NULL)}\cr
\code{\link{gIOStreamCloseFinish}(object, result, .errwarn = TRUE)}\cr
\code{\link{gIOStreamIsClosed}(object)}\cr
\code{\link{gIOStreamHasPending}(object)}\cr
\code{\link{gIOStreamSetPending}(object, .errwarn = TRUE)}\cr
\code{\link{gIOStreamClearPending}(object)}\cr

}
\section{Hierarchy}{\preformatted{GObject
   +----GIOStream
         +----GFileIOStream
         +----GSocketConnection}}
\section{Detailed Description}{GIOStream represents an object that has both read and write streams.
Generally the two streams acts as separate input and output streams,
but they share some common resources and state. For instance, for
seekable streams they may use the same position in both streams.
  
Examples of \code{\link{GIOStream}} objects are \code{\link{GSocketConnection}} which represents
a two-way network connection, and \code{\link{GFileIOStream}} which represent a
file handle opened in read-write mode.
  
To do the actual reading and writing you need to get the substreams
with \code{\link{gIOStreamGetInputStream}} and \code{\link{gIOStreamGetOutputStream}}.
  
The \code{\link{GIOStream}} object owns the input and the output streams, not the other
way around, so keeping the substreams alive will not keep the \code{\link{GIOStream}}
object alive. If the \code{\link{GIOStream}} object is freed it will be closed, thus
closing the substream, so even if the substreams stay alive they will
always just return a \code{G_IO_ERROR_CLOSED} for all operations.
  
To close a stream use \code{\link{gIOStreamClose}} which will close the common
stream object and also the individual substreams. You can also close
the substreams themselves. In most cases this only marks the
substream as closed, so further I/O on it fails. However, some streams
may support "half-closed" states where one direction of the stream
is actually shut down.}
\section{Structures}{\describe{\item{\verb{GIOStream}}{
Base class for read-write streams.

}}}
\section{Properties}{\describe{
\item{\verb{closed} [logical : Read / Write]}{

Is the stream closed.  Default value: FALSE

}
\item{\verb{input-stream} [\code{\link{GInputStream}} : *         : Read]}{

The GInputStream to read from.

}
\item{\verb{output-stream} [\code{\link{GOutputStream}} : *        : Read]}{

The GOutputStream to write to.

}
}}
\references{\url{https://developer-old.gnome.org/gio/stable/GIOStream.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
