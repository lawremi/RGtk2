\alias{GAsyncInitable}
\name{GAsyncInitable}
\title{GAsyncInitable}
\description{Asynchronously failable object initialization interface}
\section{Methods and Functions}{
\code{\link{gAsyncInitableInitAsync}(object, io.priority, cancellable = NULL, callback, user.data = NULL)}\cr
\code{\link{gAsyncInitableInitFinish}(object, res, .errwarn = TRUE)}\cr
\code{\link{gAsyncInitableNewAsync}(object.type, io.priority, cancellable, callback, user.data, ...)}\cr
\code{\link{gAsyncInitableNewFinish}(object, res, .errwarn = TRUE)}\cr
}
\section{Hierarchy}{\preformatted{GInterface
   +----GAsyncInitable}}
\section{Detailed Description}{This is the asynchronous version of \code{\link{GInitable}}, it behaves the same
in all ways except that initialization is asynchronous. For more details
see the descriptions on \code{\link{GInitable}}.
  
A class may implement both the \code{\link{GInitable}} and \code{\link{GAsyncInitable}} interfaces.
  
Users of objects implementing this are not intended to use the interface
method directly, instead it will be used automatically in various ways.
For C applications you generally just call \code{\link{gAsyncInitableNewAsync}}
directly, or indirectly via a \code{fooThingNewAsync()} wrapper. This will call
\code{\link{gAsyncInitableInitAsync}} under the cover, calling back with \code{NULL} and
a set \code{\link{GError}} on failure.}
\section{Structures}{\describe{\item{\verb{GAsyncInitable}}{
Interface for asynchronously initializable objects.
  Since 2.22

}}}
\references{\url{https://developer-old.gnome.org/gio/stable/GAsyncInitable.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
