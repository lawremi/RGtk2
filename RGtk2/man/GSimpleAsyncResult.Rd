\alias{GSimpleAsyncResult}
\alias{gSimpleAsyncResult}
\alias{GSimpleAsyncThreadFunc}
\name{GSimpleAsyncResult}
\title{GSimpleAsyncResult}
\description{Simple asynchronous results implementation}
\section{Methods and Functions}{
\code{\link{gSimpleAsyncResultNew}(source.object, callback, user.data = NULL, source.tag)}\cr
\code{\link{gSimpleAsyncResultNewError}(source.object, callback, user.data, domain, code, format, ...)}\cr
\code{\link{gSimpleAsyncResultNewFromError}(source.object, callback, user.data = NULL)}\cr
\code{\link{gSimpleAsyncResultSetOpResGpointer}(object, op.res)}\cr
\code{\link{gSimpleAsyncResultGetOpResGpointer}(object)}\cr
\code{\link{gSimpleAsyncResultSetOpResGssize}(object, op.res)}\cr
\code{\link{gSimpleAsyncResultGetOpResGssize}(object)}\cr
\code{\link{gSimpleAsyncResultSetOpResGboolean}(object, op.res)}\cr
\code{\link{gSimpleAsyncResultGetOpResGboolean}(object)}\cr
\code{\link{gSimpleAsyncResultGetSourceTag}(object)}\cr
\code{\link{gSimpleAsyncResultSetHandleCancellation}(object, handle.cancellation)}\cr
\code{\link{gSimpleAsyncResultComplete}(object)}\cr
\code{\link{gSimpleAsyncResultCompleteInIdle}(object)}\cr
\code{\link{gSimpleAsyncResultSetFromError}(object)}\cr
\code{\link{gSimpleAsyncResultPropagateError}(object, .errwarn = TRUE)}\cr
\code{\link{gSimpleAsyncResultSetError}(object, domain, code, format, ...)}\cr
\code{\link{gSimpleAsyncReportErrorInIdle}(object, callback, user.data, domain, code, format, ...)}\cr
\code{\link{gSimpleAsyncReportGerrorInIdle}(object, callback, user.data = NULL)}\cr
\code{gSimpleAsyncResult(source.object, callback, user.data = NULL, source.tag, domain, code, format, ...)}
}
\section{Hierarchy}{\preformatted{GObject
   +----GSimpleAsyncResult}}
\section{Interfaces}{GSimpleAsyncResult implements
 \code{\link{GAsyncResult}}.}
\section{Detailed Description}{Implements \code{\link{GAsyncResult}} for simple cases. Most of the time, this 
will be all an application needs, and will be used transparently. 
Because of this, \code{\link{GSimpleAsyncResult}} is used throughout GIO for 
handling asynchronous functions. 
  
GSimpleAsyncResult handles \code{\link{GAsyncReadyCallback}}s, error 
reporting, operation cancellation and the final state of an operation, 
completely transparent to the application. Results can be returned 
as a pointer e.g. for functions that return data that is collected 
asynchronously, a boolean value for checking the success or failure 
of an operation, or a \verb{integer} for operations which return the number 
of bytes modified by the operation; all of the simple return cases 
are covered.
  
Most of the time, an application will not need to know of the details 
of this API; it is handled transparently, and any necessary operations 
are handled by \code{\link{GAsyncResult}}'s interface. However, if implementing a 
new GIO module, for writing language bindings, or for complex 
applications that need better control of how asynchronous operations 
are completed, it is important to understand this functionality.
  
GSimpleAsyncResults are tagged with the calling function to ensure 
that asynchronous functions and their finishing functions are used 
together correctly.
  
To create a new \code{\link{GSimpleAsyncResult}}, call \code{\link{gSimpleAsyncResultNew}}. 
If the result needs to be created for a \code{\link{GError}}, use 
\code{\link{gSimpleAsyncResultNewFromError}}. If a \code{\link{GError}} is not available 
(e.g. the asynchronous operation's doesn't take a \code{\link{GError}} argument), 
but the result still needs to be created for an error condition, use
\code{\link{gSimpleAsyncResultNewError}} (or \code{gSimpleAsyncResultSetErrorVa()}
if your application or binding requires passing a variable argument list 
directly), and the error can then be propegated through the use of 
\code{\link{gSimpleAsyncResultPropagateError}}.
  
An asynchronous operation can be made to ignore a cancellation event by 
calling \code{\link{gSimpleAsyncResultSetHandleCancellation}} with a 
\code{\link{GSimpleAsyncResult}} for the operation and \code{FALSE}. This is useful for
operations that are dangerous to cancel, such as close (which would
cause a leak if cancelled before being run).
  
GSimpleAsyncResult can integrate into GLib's event loop, \verb{GMainLoop}, 
or it can use \verb{GThread}s if available. 
\code{\link{gSimpleAsyncResultComplete}} will finish an I/O task directly
from the point where it is called. \code{\link{gSimpleAsyncResultCompleteInIdle}}
will finish it from an idle handler in the thread-default main
context. \code{gSimpleAsyncResultRunInThread()} will run the
job in a separate thread and then deliver the result to the
thread-default main context.
  
To set the results of an asynchronous function, 
\code{\link{gSimpleAsyncResultSetOpResGpointer}}, 
\code{\link{gSimpleAsyncResultSetOpResGboolean}}, and 
\code{\link{gSimpleAsyncResultSetOpResGssize}}
are provided, setting the operation's result to a gpointer, gboolean, or 
gssize, respectively.
  
Likewise, to get the result of an asynchronous function, 
\code{\link{gSimpleAsyncResultGetOpResGpointer}},
\code{\link{gSimpleAsyncResultGetOpResGboolean}}, and 
\code{\link{gSimpleAsyncResultGetOpResGssize}} are 
provided, getting the operation's result as a gpointer, gboolean, and 
gssize, respectively.}
\section{Structures}{\describe{\item{\verb{GSimpleAsyncResult}}{
A simple implementation of \code{\link{GAsyncResult}}.

}}}
\section{Convenient Construction}{\code{gSimpleAsyncResult} is the result of collapsing the constructors of \code{GSimpleAsyncResult} (\code{\link{gSimpleAsyncResultNew}}, \code{\link{gSimpleAsyncResultNewError}}, \code{\link{gSimpleAsyncResultNewFromError}}) and accepts a subset of its arguments matching the required arguments of one of its delegate constructors.}
\section{User Functions}{\describe{\item{\code{GSimpleAsyncThreadFunc(res, object, cancellable)}}{
Simple thread function that runs an asynchronous operation and
checks for cancellation.

\describe{
\item{\code{res}}{a \code{\link{GSimpleAsyncResult}}.}
\item{\code{object}}{a \code{\link{GObject}}.}
\item{\code{cancellable}}{optional \code{\link{GCancellable}} object, \code{NULL} to ignore.}
}


}}}
\references{\url{https://developer-old.gnome.org/gio/stable/GSimpleAsyncResult.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
