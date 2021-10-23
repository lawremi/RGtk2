\alias{GDataOutputStream}
\alias{gDataOutputStream}
\name{GDataOutputStream}
\title{GDataOutputStream}
\description{Data Output Stream}
\section{Methods and Functions}{
\code{\link{gDataOutputStreamNew}(base.stream = NULL)}\cr
\code{\link{gDataOutputStreamSetByteOrder}(object, order)}\cr
\code{\link{gDataOutputStreamGetByteOrder}(object)}\cr
\code{\link{gDataOutputStreamPutByte}(object, data, cancellable = NULL, .errwarn = TRUE)}\cr
\code{\link{gDataOutputStreamPutInt16}(object, data, cancellable = NULL, .errwarn = TRUE)}\cr
\code{\link{gDataOutputStreamPutUint16}(object, data, cancellable = NULL, .errwarn = TRUE)}\cr
\code{\link{gDataOutputStreamPutInt32}(object, data, cancellable = NULL, .errwarn = TRUE)}\cr
\code{\link{gDataOutputStreamPutUint32}(object, data, cancellable = NULL, .errwarn = TRUE)}\cr
\code{\link{gDataOutputStreamPutInt64}(object, data, cancellable = NULL, .errwarn = TRUE)}\cr
\code{\link{gDataOutputStreamPutUint64}(object, data, cancellable = NULL, .errwarn = TRUE)}\cr
\code{\link{gDataOutputStreamPutString}(object, str, cancellable = NULL, .errwarn = TRUE)}\cr
\code{gDataOutputStream(base.stream = NULL)}
}
\section{Hierarchy}{\preformatted{GObject
   +----GOutputStream
         +----GFilterOutputStream
               +----GDataOutputStream}}
\section{Detailed Description}{Data output stream implements \code{\link{GOutputStream}} and includes functions for 
writing data directly to an output stream.}
\section{Structures}{\describe{\item{\verb{GDataOutputStream}}{
An implementation of \code{\link{GBufferedOutputStream}} that allows for high-level
data manipulation of arbitrary data (including binary operations).



}}}
\section{Convenient Construction}{\code{gDataOutputStream} is the equivalent of \code{\link{gDataOutputStreamNew}}.}
\section{Properties}{\describe{\item{\verb{byte-order} [\code{\link{GDataStreamByteOrder}} : Read / Write]}{

Determines the byte ordering that is used when writing
multi-byte entities (such as integers) to the stream.
  Default value: G_DATA_STREAM_BYTE_ORDER_BIG_ENDIAN

}}}
\references{\url{https://developer-old.gnome.org/gio/stable/GDataOutputStream.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
