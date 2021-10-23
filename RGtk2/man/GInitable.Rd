\alias{GInitable}
\name{GInitable}
\title{GInitable}
\description{Failable object initialization interface}
\section{Methods and Functions}{
\code{\link{gInitableInit}(object, cancellable = NULL, .errwarn = TRUE)}\cr
\code{\link{gInitableNew}(object.type, cancellable, ..., .errwarn = TRUE)}\cr
}
\section{Hierarchy}{\preformatted{GInterface
   +----GInitable}}
\section{Implementations}{GInitable is implemented by
 \code{\link{GSocket}}.}
\section{Detailed Description}{\code{\link{GInitable}} is implemented by objects that can fail during
initialization. If an object implements this interface the
\code{\link{gInitableInit}} function must be called as the first thing
after construction. If \code{\link{gInitableInit}} is not called, or if
it returns an error, all further operations on the object
should fail, generally with a \code{G_IO_ERROR_NOT_INITIALIZED} error.
  
Users of objects implementing this are not intended to use
the interface method directly, instead it will be used automatically
in various ways. For C applications you generally just call
\code{\link{gInitableNew}} directly, or indirectly via a \code{fooThingNew()} wrapper.
This will call \code{\link{gInitableInit}} under the cover, returning \code{NULL} and
setting a \code{\link{GError}} on failure.
  
For bindings in languages where the native constructor supports
exceptions the binding could check for objects implemention \code{\link{GInitable}}
during normal construction and automatically initialize them, throwing
an exception on failure.}
\section{Structures}{\describe{\item{\verb{GInitable}}{
Interface for initializable objects.
  Since 2.22

}}}
\references{\url{https://developer-old.gnome.org/gio/stable/GInitable.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
