\alias{GFilterOutputStream}
\name{GFilterOutputStream}
\title{GFilterOutputStream}
\description{Filter Output Stream}
\section{Methods and Functions}{
\code{\link{gFilterOutputStreamGetBaseStream}(object)}\cr
\code{\link{gFilterOutputStreamGetCloseBaseStream}(object)}\cr
\code{\link{gFilterOutputStreamSetCloseBaseStream}(object, close.base)}\cr

}
\section{Hierarchy}{\preformatted{GObject
   +----GOutputStream
         +----GFilterOutputStream
               +----GBufferedOutputStream
               +----GDataOutputStream}}
\section{Structures}{\describe{\item{\verb{GFilterOutputStream}}{
A base class for all output streams that work on an underlying stream.

}}}
\section{Properties}{\describe{
\item{\verb{base-stream} [\code{\link{GOutputStream}} : *        : Read / Write / Construct Only]}{

The underlying base stream on which the io ops will be done.

}
\item{\verb{close-base-stream} [logical : Read / Write / Construct Only]}{

If the base stream should be closed when the filter stream is closed.  Default value: TRUE

}
}}
\references{\url{https://developer-old.gnome.org/gio/stable/GFilterOutputStream.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
