\alias{GFileInputStream}
\name{GFileInputStream}
\title{GFileInputStream}
\description{File input streaming operations}
\section{Methods and Functions}{
\code{\link{gFileInputStreamQueryInfo}(object, attributes, cancellable = NULL, .errwarn = TRUE)}\cr
\code{\link{gFileInputStreamQueryInfoAsync}(object, attributes, io.priority = 0, cancellable = NULL, callback, user.data = NULL)}\cr
\code{\link{gFileInputStreamQueryInfoFinish}(object, result, .errwarn = TRUE)}\cr

}
\section{Hierarchy}{\preformatted{GObject
   +----GInputStream
         +----GFileInputStream}}
\section{Interfaces}{GFileInputStream implements
 \code{\link{GSeekable}}.}
\section{Detailed Description}{GFileInputStream provides input streams that take their
content from a file.
  
GFileInputStream implements \code{\link{GSeekable}}, which allows the input 
stream to jump to arbitrary positions in the file, provided the 
filesystem of the file allows it. To find the position of a file
input stream, use \code{\link{gSeekableTell}}. To find out if a file input
stream supports seeking, use \code{gSeekableStreamCanSeek()}.
To position a file input stream, use \code{\link{gSeekableSeek}}.}
\section{Structures}{\describe{\item{\verb{GFileInputStream}}{
A subclass of GInputStream for opened files. This adds
a few file-specific operations and seeking.
  \code{\link{GFileInputStream}} implements \code{\link{GSeekable}}.

}}}
\references{\url{https://developer-old.gnome.org/gio/stable/GFileInputStream.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
