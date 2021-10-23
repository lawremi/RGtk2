\alias{GDataInputStream}
\alias{gDataInputStream}
\alias{GDataStreamByteOrder}
\alias{GDataStreamNewlineType}
\name{GDataInputStream}
\title{GDataInputStream}
\description{Data Input Stream}
\section{Methods and Functions}{
\code{\link{gDataInputStreamNew}(base.stream = NULL)}\cr
\code{\link{gDataInputStreamSetByteOrder}(object, order)}\cr
\code{\link{gDataInputStreamGetByteOrder}(object)}\cr
\code{\link{gDataInputStreamSetNewlineType}(object, type)}\cr
\code{\link{gDataInputStreamGetNewlineType}(object)}\cr
\code{\link{gDataInputStreamReadByte}(object, cancellable = NULL, .errwarn = TRUE)}\cr
\code{\link{gDataInputStreamReadInt16}(object, cancellable = NULL, .errwarn = TRUE)}\cr
\code{\link{gDataInputStreamReadUint16}(object, cancellable = NULL, .errwarn = TRUE)}\cr
\code{\link{gDataInputStreamReadInt32}(object, cancellable = NULL, .errwarn = TRUE)}\cr
\code{\link{gDataInputStreamReadUint32}(object, cancellable = NULL, .errwarn = TRUE)}\cr
\code{\link{gDataInputStreamReadInt64}(object, cancellable = NULL, .errwarn = TRUE)}\cr
\code{\link{gDataInputStreamReadUint64}(object, cancellable = NULL, .errwarn = TRUE)}\cr
\code{\link{gDataInputStreamReadLine}(object, cancellable = NULL, .errwarn = TRUE)}\cr
\code{\link{gDataInputStreamReadLineAsync}(object, io.priority, cancellable = NULL, callback, user.data = NULL)}\cr
\code{\link{gDataInputStreamReadLineFinish}(object, result, .errwarn = TRUE)}\cr
\code{\link{gDataInputStreamReadUntil}(object, stop.chars, cancellable = NULL, .errwarn = TRUE)}\cr
\code{\link{gDataInputStreamReadUntilAsync}(object, stop.chars, io.priority, cancellable = NULL, callback, user.data = NULL)}\cr
\code{\link{gDataInputStreamReadUntilFinish}(object, result, length, .errwarn = TRUE)}\cr
\code{gDataInputStream(base.stream = NULL)}
}
\section{Hierarchy}{\preformatted{
GObject
   +----GInputStream
         +----GFilterInputStream
               +----GBufferedInputStream
                     +----GDataInputStream
GEnum
   +----GDataStreamByteOrder
GEnum
   +----GDataStreamNewlineType
}}
\section{Detailed Description}{Data input stream implements \code{\link{GInputStream}} and includes functions for 
reading structured data directly from a binary input stream.}
\section{Structures}{\describe{\item{\verb{GDataInputStream}}{
An implementation of \code{\link{GBufferedInputStream}} that allows for high-level
data manipulation of arbitrary data (including binary operations).



}}}
\section{Convenient Construction}{\code{gDataInputStream} is the equivalent of \code{\link{gDataInputStreamNew}}.}
\section{Enums and Flags}{\describe{
\item{\verb{GDataStreamByteOrder}}{
\code{\link{GDataStreamByteOrder}} is used to ensure proper endianness of streaming data sources
across various machine architectures.

\describe{
\item{\verb{big-endian}}{Selects Big Endian byte order.}
\item{\verb{little-endian}}{Selects Little Endian byte order.}
\item{\verb{host-endian}}{Selects endianness based on host machine's architecture.}
}

}
\item{\verb{GDataStreamNewlineType}}{
\code{\link{GDataStreamNewlineType}} is used when checking for or setting the line endings for a given file.

\describe{
\item{\verb{lf}}{Selects "LF" line endings, common on most modern UNIX platforms.}
\item{\verb{cr}}{Selects "CR" line endings.}
\item{\verb{cr-lf}}{Selects "CR, LF" line ending, common on Microsoft Windows.}
\item{\verb{any}}{Automatically try to handle any line ending type.}
}

}
}}
\section{Properties}{\describe{
\item{\verb{byte-order} [\code{\link{GDataStreamByteOrder}} : Read / Write]}{

The byte order.  Default value: G_DATA_STREAM_BYTE_ORDER_BIG_ENDIAN

}
\item{\verb{newline-type} [\code{\link{GDataStreamNewlineType}} : Read / Write]}{

The accepted types of line ending.  Default value: G_DATA_STREAM_NEWLINE_TYPE_LF

}
}}
\references{\url{https://developer-old.gnome.org/gio/stable/GDataInputStream.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
