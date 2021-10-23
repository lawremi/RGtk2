\alias{GAsyncResult}
\alias{GAsyncReadyCallback}
\name{GAsyncResult}
\title{GAsyncResult}
\description{Asynchronous Function Results}
\section{Methods and Functions}{
\code{\link{gAsyncResultGetUserData}(object)}\cr
\code{\link{gAsyncResultGetSourceObject}(object)}\cr
}
\section{Hierarchy}{\preformatted{GInterface
   +----GAsyncResult}}
\section{Implementations}{GAsyncResult is implemented by
 \code{\link{GSimpleAsyncResult}}.}
\section{Detailed Description}{Provides a base class for implementing asynchronous function results.
  
Asynchronous operations are broken up into two separate operations
which are chained together by a \code{\link{GAsyncReadyCallback}}. To begin
an asynchronous operation, provide a \code{\link{GAsyncReadyCallback}} to the 
asynchronous function. This callback will be triggered when the 
operation has completed, and will be passed a \code{\link{GAsyncResult}} instance 
filled with the details of the operation's success or failure, the 
object the asynchronous function was started for and any error codes 
returned. The asynchronous callback function is then expected to call 
the corresponding "\code{finish()}" function with the object the function 
was called for, and the \code{\link{GAsyncResult}} instance, and optionally, 
an \code{error} to grab any error conditions that may have occurred.
  
The purpose of the "\code{finish()}" function is to take the generic 
result of type \code{\link{GAsyncResult}} and return the specific result
that the operation in question yields (e.g. a \code{\link{GFileEnumerator}} for
a "enumerate children" operation). If the result or error status
of the operation is not needed, there is no need to call the
"\code{finish()}" function, GIO will take care of cleaning up the
result and error information after the \code{\link{GAsyncReadyCallback}} 
returns. It is also allowed to take a reference to the \code{\link{GAsyncResult}} and
call "\code{finish()}" later.
  
Example of a typical asynchronous operation flow:
\preformatted{

frobnitz_result_func <- function(source_object, res, user_data)
{
  success <- _theoretical_frobnitz_finish (source_object, res, NULL)

  if (success)
    message("Hurray!")
  else 
    message("Uh oh!")

  ## ....
}

_theoretical_frobnitz_async (theoretical_data, 
                             NULL, 
                             frobnitz_result_func, 
                             NULL)
}
  
The callback for an asynchronous operation is called only once, and is
always called, even in the case of a cancelled operation. On cancellation
the result is a \code{G_IO_ERROR_CANCELLED} error.
  
Some ascynchronous operations are implemented using synchronous calls. These
are run in a separate thread, if \verb{GThread} has been initialized, but otherwise they
are sent to the Main Event Loop and processed in an idle function. So, if you
truly need asynchronous operations, make sure to initialize \verb{GThread}.}
\section{Structures}{\describe{\item{\verb{GAsyncResult}}{
Holds results information for an asynchronous operation,
usually passed directly to a asynchronous \code{finish()} operation.

}}}
\section{User Functions}{\describe{\item{\code{GAsyncReadyCallback(source.object, res, user.data)}}{
Type definition for a function that will be called back when an asynchronous
operation within GIO has been completed.

\describe{
\item{\code{source.object}}{the object the asynchronous operation was started with.}
\item{\code{res}}{a \code{\link{GAsyncResult}}.}
\item{\code{user.data}}{user data passed to the callback.}
}


}}}
\references{\url{https://developer-old.gnome.org/gio/stable/GAsyncResult.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
