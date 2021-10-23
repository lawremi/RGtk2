\alias{GBufferedOutputStream}
\alias{gBufferedOutputStream}
\name{GBufferedOutputStream}
\title{GBufferedOutputStream}
\description{Buffered Output Stream}
\section{Methods and Functions}{
\code{\link{gBufferedOutputStreamNew}(base.stream = NULL)}\cr
\code{\link{gBufferedOutputStreamNewSized}(base.stream, size)}\cr
\code{\link{gBufferedOutputStreamGetBufferSize}(object)}\cr
\code{\link{gBufferedOutputStreamSetBufferSize}(object, size)}\cr
\code{\link{gBufferedOutputStreamGetAutoGrow}(object)}\cr
\code{\link{gBufferedOutputStreamSetAutoGrow}(object, auto.grow)}\cr
\code{gBufferedOutputStream(base.stream, size)}
}
\section{Hierarchy}{\preformatted{GObject
   +----GOutputStream
         +----GFilterOutputStream
               +----GBufferedOutputStream}}
\section{Detailed Description}{Buffered output stream implements \code{\link{GFilterOutputStream}} and provides 
for buffered writes. 
  
By default, \code{\link{GBufferedOutputStream}}'s buffer size is set at 4 kilobytes.
  
To create a buffered output stream, use \code{\link{gBufferedOutputStreamNew}}, 
or \code{\link{gBufferedOutputStreamNewSized}} to specify the buffer's size 
at construction.
  
To get the size of a buffer within a buffered input stream, use 
\code{\link{gBufferedOutputStreamGetBufferSize}}. To change the size of a 
buffered output stream's buffer, use 
\code{\link{gBufferedOutputStreamSetBufferSize}}. Note that the buffer's 
size cannot be reduced below the size of the data within the buffer.}
\section{Structures}{\describe{\item{\verb{GBufferedOutputStream}}{
An implementation of \code{\link{GFilterOutputStream}} with a sized buffer.



}}}
\section{Convenient Construction}{\code{gBufferedOutputStream} is the result of collapsing the constructors of \code{GBufferedOutputStream} (\code{\link{gBufferedOutputStreamNew}}, \code{\link{gBufferedOutputStreamNewSized}}) and accepts a subset of its arguments matching the required arguments of one of its delegate constructors.}
\section{Properties}{\describe{
\item{\verb{auto-grow} [logical : Read / Write]}{

Whether the buffer should automatically grow.  Default value: FALSE

}
\item{\verb{buffer-size} [numeric : Read / Write / Construct]}{

The size of the backend buffer.  Allowed values: >= 1  Default value: 4096

}
}}
\references{\url{https://developer-old.gnome.org/gio/stable/GBufferedOutputStream.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
