\alias{gtkRecentInfoGetPrivateHint}
\name{gtkRecentInfoGetPrivateHint}
\title{gtkRecentInfoGetPrivateHint}
\description{Gets the value of the "private" flag.  Resources in the recently used
list that have this flag set to \code{TRUE} should only be displayed by the
applications that have registered them.}
\usage{gtkRecentInfoGetPrivateHint(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkRecentInfo}}}}
\details{Since 2.10}
\value{[logical] \code{TRUE} if the private flag was found, \code{FALSE} otherwise.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
