\alias{gtkRecentChooserGetUris}
\name{gtkRecentChooserGetUris}
\title{gtkRecentChooserGetUris}
\description{Gets the URI of the recently used resources.}
\usage{gtkRecentChooserGetUris(object)}
\arguments{\item{\code{object}}{[\code{\link{GtkRecentChooser}}]  a \code{\link{GtkRecentChooser}}}}
\details{The return value of this function is affected by the "sort-type" and "limit"
properties of \code{chooser}.
  
Since the returned list is \code{NULL} terminated, \code{length} may be \code{NULL}.  

  Since  2.10}
\value{
A list containing the following elements:
\item{retval}{[character]  A newly allocated, \code{NULL} terminated list of strings.}
\item{\code{length}}{[numeric]  return location for a the length of the URI list, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
