\alias{GFileOutputStream}
\name{GFileOutputStream}
\title{GFileOutputStream}
\description{File output streaming operations}
\section{Methods and Functions}{
\code{\link{gFileOutputStreamQueryInfo}(object, attributes, cancellable = NULL, .errwarn = TRUE)}\cr
\code{\link{gFileOutputStreamQueryInfoAsync}(object, attributes, io.priority = 0, cancellable = NULL, callback, user.data = NULL)}\cr
\code{\link{gFileOutputStreamQueryInfoFinish}(object, result, .errwarn = TRUE)}\cr
\code{\link{gFileOutputStreamGetEtag}(object)}\cr

}
\section{Hierarchy}{\preformatted{GObject
   +----GOutputStream
         +----GFileOutputStream}}
\section{Interfaces}{GFileOutputStream implements
 \code{\link{GSeekable}}.}
\section{Detailed Description}{GFileOutputStream provides output streams that write their
content to a file.
  
GFileOutputStream implements \code{\link{GSeekable}}, which allows the output 
stream to jump to arbitrary positions in the file and to truncate
the file, provided the filesystem of the file supports these 
operations.
  
To find the position of a file output stream, use \code{\link{gSeekableTell}}.
To find out if a file output stream supports seeking, use
\code{\link{gSeekableCanSeek}}.To position a file output stream, use
\code{\link{gSeekableSeek}}. To find out if a file output stream supports
truncating, use \code{\link{gSeekableCanTruncate}}. To truncate a file output
stream, use \code{\link{gSeekableTruncate}}.}
\section{Structures}{\describe{\item{\verb{GFileOutputStream}}{
A subclass of GOutputStream for opened files. This adds
a few file-specific operations and seeking and truncating.
  \code{\link{GFileOutputStream}} implements GSeekable.

}}}
\references{\url{https://developer-old.gnome.org/gio/stable/GFileOutputStream.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
