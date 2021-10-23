\alias{GSeekable}
\name{GSeekable}
\title{GSeekable}
\description{Stream seeking interface}
\section{Methods and Functions}{
\code{\link{gSeekableTell}(object)}\cr
\code{\link{gSeekableCanSeek}(object)}\cr
\code{\link{gSeekableSeek}(object, offset, type = "G_SEEK_SET", cancellable = NULL, .errwarn = TRUE)}\cr
\code{\link{gSeekableCanTruncate}(object)}\cr
\code{\link{gSeekableTruncate}(object, offset, cancellable = NULL, .errwarn = TRUE)}\cr
}
\section{Hierarchy}{\preformatted{GInterface
   +----GSeekable}}
\section{Implementations}{GSeekable is implemented by
 \code{\link{GFileIOStream}},  \code{\link{GFileInputStream}},  \code{\link{GFileOutputStream}},  \code{\link{GMemoryInputStream}} and  \code{\link{GMemoryOutputStream}}.}
\section{Detailed Description}{\code{\link{GSeekable}} is implemented by streams (implementations of 
\code{\link{GInputStream}} or \code{\link{GOutputStream}}) that support seeking.}
\section{Structures}{\describe{\item{\verb{GSeekable}}{
Seek object for streaming operations.

}}}
\references{\url{https://developer-old.gnome.org/gio/stable/GSeekable.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
