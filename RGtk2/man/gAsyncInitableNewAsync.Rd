\alias{gAsyncInitableNewAsync}
\name{gAsyncInitableNewAsync}
\title{gAsyncInitableNewAsync}
\description{Helper function for constructing \verb{GAsyncInitiable} object. This is
similar to \code{\link{gObjectNew}} but also initializes the object asyncronously.}
\usage{gAsyncInitableNewAsync(object.type, io.priority, cancellable, 
    callback, user.data, ...)}
\arguments{
\item{\verb{object.type}}{a \code{\link{GType}} supporting \code{\link{GAsyncInitable}}.}
\item{\verb{io.priority}}{the I/O priority
of the operation.}
\item{\verb{cancellable}}{optional \code{\link{GCancellable}} object, \code{NULL} to ignore.}
\item{\verb{callback}}{a \code{\link{GAsyncReadyCallback}} to call when the initialization is
finished}
\item{\verb{user.data}}{the data to pass to callback function}
\item{\verb{...}}{the value if the first property, followed by and other property
value pairs, and ended by \code{NULL}.}
}
\details{When the initialization is finished, \code{callback} will be called. You can
then call \code{\link{gAsyncInitableNewFinish}} to get new object and check for
any errors.
  Since 2.22}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
