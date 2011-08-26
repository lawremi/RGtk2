\alias{gtkRecentInfoGetGroups}
\name{gtkRecentInfoGetGroups}
\title{gtkRecentInfoGetGroups}
\description{Returns all groups registered for the recently used item \code{info}.  The
array of returned group names will be \code{NULL} terminated, so length might
optionally be \code{NULL}.}
\usage{gtkRecentInfoGetGroups(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkRecentInfo}}}}
\details{Since 2.10}
\value{
A list containing the following elements:
\item{retval}{[character] a newly allocated
\code{NULL} terminated list of strings. \emph{[  \acronym{array}   length=length zero-terminated=1]}}
\item{\verb{length}}{return location for the number of groups returned. \emph{[  \acronym{out}  ][  \acronym{allow-none}  ]}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
