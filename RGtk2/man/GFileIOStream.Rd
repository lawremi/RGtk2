\alias{GFileIOStream}
\name{GFileIOStream}
\title{GFileIOStream}
\description{File read and write streaming operations}
\section{Methods and Functions}{
\code{\link{gFileIOStreamGetEtag}(object)}\cr
\code{\link{gFileIOStreamQueryInfo}(object, attributes, cancellable = NULL, .errwarn = TRUE)}\cr
\code{\link{gFileIOStreamQueryInfoAsync}(object, attributes, io.priority, cancellable = NULL, callback, user.data = NULL)}\cr
\code{\link{gFileIOStreamQueryInfoFinish}(object, result, .errwarn = TRUE)}\cr

}
\section{Hierarchy}{\preformatted{GObject
   +----GIOStream
         +----GFileIOStream}}
\section{Interfaces}{GFileIOStream implements
 \code{\link{GSeekable}}.}
\section{Detailed Description}{GFileIOStream provides io streams that both read and write to the same
file handle.
  
GFileIOStream implements \code{\link{GSeekable}}, which allows the io
stream to jump to arbitrary positions in the file and to truncate
the file, provided the filesystem of the file supports these
operations.
  
To find the position of a file io stream, use
\code{\link{gSeekableTell}}.
  
To find out if a file io stream supports seeking, use \code{\link{gSeekableCanSeek}}.
To position a file io stream, use \code{\link{gSeekableSeek}}.
To find out if a file io stream supports truncating, use
\code{\link{gSeekableCanTruncate}}. To truncate a file io
stream, use \code{\link{gSeekableTruncate}}.
  
The default implementation of all the \code{\link{GFileIOStream}} operations
and the implementation of \code{\link{GSeekable}} just call into the same operations
on the output stream.}
\section{Structures}{\describe{\item{\verb{GFileIOStream}}{
A subclass of GIOStream for opened files. This adds
a few file-specific operations and seeking and truncating.
  \code{\link{GFileIOStream}} implements GSeekable.

}}}
\references{\url{https://developer-old.gnome.org/gio/stable/GFileIOStream.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
