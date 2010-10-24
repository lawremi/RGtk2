\alias{gAppInfoGetDefaultForUriScheme}
\name{gAppInfoGetDefaultForUriScheme}
\title{gAppInfoGetDefaultForUriScheme}
\description{Gets the default application for launching applications 
using this URI scheme. A URI scheme is the initial part 
of the URI, up to but not including the ':', e.g. "http", 
"ftp" or "sip".}
\usage{gAppInfoGetDefaultForUriScheme(uri.scheme)}
\arguments{\item{\verb{uri.scheme}}{a string containing a URI scheme.}}
\value{[\code{\link{GAppInfo}}] \code{\link{GAppInfo}} for given \code{uri.scheme} or \code{NULL} on error.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
