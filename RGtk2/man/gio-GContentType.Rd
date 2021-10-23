\alias{gio-GContentType}
\name{gio-GContentType}
\title{GContentType}
\description{Platform-specific content typing}
\section{Methods and Functions}{
\code{\link{gContentTypeEquals}(type1, type2)}\cr
\code{\link{gContentTypeIsA}(type, supertype)}\cr
\code{\link{gContentTypeIsUnknown}(type)}\cr
\code{\link{gContentTypeGetDescription}(type)}\cr
\code{\link{gContentTypeGetMimeType}(type)}\cr
\code{\link{gContentTypeGetIcon}(type)}\cr
\code{\link{gContentTypeCanBeExecutable}(type)}\cr
\code{\link{gContentTypeFromMimeType}(mime.type)}\cr
\code{\link{gContentTypeGuess}(filename, data)}\cr
\code{\link{gContentTypeGuessForTree}(root)}\cr
\code{\link{gContentTypesGetRegistered}()}\cr
}
\section{Detailed Description}{A content type is a platform specific string that defines the type
of a file. On unix it is a mime type, on win32 it is an extension string
like ".doc", ".txt" or a percieved string like "audio". Such strings
can be looked up in the registry at HKEY_CLASSES_ROOT.}
\references{\url{https://developer-old.gnome.org/gio/stable/gio-GContentType.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
