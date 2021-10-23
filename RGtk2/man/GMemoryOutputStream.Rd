\alias{GMemoryOutputStream}
\alias{gMemoryOutputStream}
\alias{GReallocFunc}
\name{GMemoryOutputStream}
\title{GMemoryOutputStream}
\description{Streaming output operations on memory chunks}
\section{Methods and Functions}{
\code{\link{gMemoryOutputStreamNew}(len)}\cr
\code{\link{gMemoryOutputStreamGetData}(object)}\cr
\code{\link{gMemoryOutputStreamGetSize}(object)}\cr
\code{\link{gMemoryOutputStreamGetDataSize}(object)}\cr
\code{gMemoryOutputStream(len)}
}
\section{Hierarchy}{\preformatted{GObject
   +----GOutputStream
         +----GMemoryOutputStream}}
\section{Interfaces}{GMemoryOutputStream implements
 \code{\link{GSeekable}}.}
\section{Detailed Description}{\code{\link{GMemoryOutputStream}} is a class for using arbitrary
memory chunks as output for GIO streaming output operations.}
\section{Structures}{\describe{\item{\verb{GMemoryOutputStream}}{
Implements \code{\link{GOutputStream}} for arbitrary memory chunks.

}}}
\section{Convenient Construction}{\code{gMemoryOutputStream} is the equivalent of \code{\link{gMemoryOutputStreamNew}}.}
\section{User Functions}{\describe{\item{\code{GReallocFunc(data, size)}}{
Changes the size of the memory block pointed to by \code{data} to
\code{size} bytes.
  
The function should have the same semantics as \code{realloc()}.

\describe{
\item{\code{data}}{memory block to reallocate}
\item{\code{size}}{size to reallocate \code{data} to}
}

\emph{Returns:} [R object] a pointer to the reallocated memory

}}}
\references{\url{https://developer-old.gnome.org/gio/stable/GMemoryOutputStream.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
