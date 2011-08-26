\alias{gIconNewForString}
\name{gIconNewForString}
\title{gIconNewForString}
\description{Generate a \code{\link{GIcon}} instance from \code{str}. This function can fail if
\code{str} is not valid - see \code{\link{gIconToString}} for discussion.}
\usage{gIconNewForString(str, .errwarn = TRUE)}
\arguments{
\item{\verb{str}}{A string obtained via \code{\link{gIconToString}}.}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{If your application or library provides one or more \code{\link{GIcon}}
implementations you need to ensure that each \code{\link{GType}} is registered
with the type system prior to calling \code{\link{gIconNewForString}}.
  Since 2.20}
\value{
A list containing the following elements:
\item{retval}{[\code{\link{GIcon}}] An object implementing the \code{\link{GIcon}} interface or \code{NULL} if
\code{error} is set.}
\item{\verb{error}}{Return location for error.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
