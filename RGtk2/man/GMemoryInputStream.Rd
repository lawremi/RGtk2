\alias{GMemoryInputStream}
\alias{gMemoryInputStream}
\name{GMemoryInputStream}
\title{GMemoryInputStream}
\description{Streaming input operations on memory chunks}
\section{Methods and Functions}{
\code{\link{gMemoryInputStreamNew}()}\cr
\code{\link{gMemoryInputStreamNewFromData}(data)}\cr
\code{\link{gMemoryInputStreamAddData}(object, data)}\cr
\code{gMemoryInputStream(data)}
}
\section{Hierarchy}{\preformatted{GObject
   +----GInputStream
         +----GMemoryInputStream}}
\section{Interfaces}{GMemoryInputStream implements
 \code{\link{GSeekable}}.}
\section{Detailed Description}{\code{\link{GMemoryInputStream}} is a class for using arbitrary
memory chunks as input for GIO streaming input operations.}
\section{Structures}{\describe{\item{\verb{GMemoryInputStream}}{
Implements \code{\link{GInputStream}} for arbitrary memory chunks.

}}}
\section{Convenient Construction}{\code{gMemoryInputStream} is the result of collapsing the constructors of \code{GMemoryInputStream} (\code{\link{gMemoryInputStreamNew}}, \code{\link{gMemoryInputStreamNewFromData}}) and accepts a subset of its arguments matching the required arguments of one of its delegate constructors.}
\references{\url{https://developer-old.gnome.org/gio/stable/GMemoryInputStream.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
