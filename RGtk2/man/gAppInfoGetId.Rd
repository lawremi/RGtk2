\alias{gAppInfoGetId}
\name{gAppInfoGetId}
\title{gAppInfoGetId}
\description{Gets the ID of an application. An id is a string that
identifies the application. The exact format of the id is
platform dependent. For instance, on Unix this is the
desktop file id from the xdg menu specification.}
\usage{gAppInfoGetId(object)}
\arguments{\item{\verb{object}}{a \code{\link{GAppInfo}}.}}
\details{Note that the returned ID may be \code{NULL}, depending on how
the \code{appinfo} has been constructed.}
\value{[char] a string containing the application's ID.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
