\alias{gtkRecentInfoGetUriDisplay}
\name{gtkRecentInfoGetUriDisplay}
\title{gtkRecentInfoGetUriDisplay}
\description{Gets a displayable version of the resource's URI.  If the resource
is local, it returns a local path; if the resource is not local,
it returns the UTF-8 encoded content of \code{\link{gtkRecentInfoGetUri}}.}
\usage{gtkRecentInfoGetUriDisplay(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkRecentInfo}}}}
\details{Since 2.10}
\value{[character] a newly allocated UTF-8 string containing the
resource's URI or \code{NULL}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
