\alias{gInitableNew}
\name{gInitableNew}
\title{gInitableNew}
\description{Helper function for constructing \verb{GInitiable} object. This is
similar to \code{\link{gObjectNew}} but also initializes the object
and returns \code{NULL}, setting an error on failure.}
\usage{gInitableNew(object.type, cancellable, ..., .errwarn = TRUE)}
\arguments{
\item{\verb{object.type}}{a \code{\link{GType}} supporting \code{\link{GInitable}}.}
\item{\verb{cancellable}}{optional \code{\link{GCancellable}} object, \code{NULL} to ignore.}
\item{\verb{...}}{the value if the first property, followed by and other property
value pairs, and ended by \code{NULL}.}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{Since 2.22}
\value{
A list containing the following elements:
\item{retval}{[R object] a newly allocated \code{\link{GObject}}, or \code{NULL} on error}
\item{\verb{error}}{a \code{\link{GError}} location to store the error occuring, or \code{NULL} to
ignore.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
