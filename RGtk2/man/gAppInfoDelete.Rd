\alias{gAppInfoDelete}
\name{gAppInfoDelete}
\title{gAppInfoDelete}
\description{Tries to delete a \code{\link{GAppInfo}}.}
\usage{gAppInfoDelete(object)}
\arguments{\item{\verb{object}}{a \code{\link{GAppInfo}}}}
\details{On some platforms, there may be a difference between user-defined
\code{\link{GAppInfo}}s which can be deleted, and system-wide ones which
cannot. See \code{\link{gAppInfoCanDelete}}.
  Since 2.20}
\value{[logical] \code{TRUE} if \code{appinfo} has been deleted}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
