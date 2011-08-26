\alias{gtkRecentChooserGetUris}
\name{gtkRecentChooserGetUris}
\title{gtkRecentChooserGetUris}
\description{Gets the URI of the recently used resources.}
\usage{gtkRecentChooserGetUris(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkRecentChooser}}}}
\details{The return value of this function is affected by the "sort-type" and "limit"
properties of \code{chooser}.
  
Since the returned list is \code{NULL} terminated, \code{length} may be \code{NULL}.
  Since 2.10}
\value{
A list containing the following elements:
\item{retval}{[character] A newly allocated, \code{NULL} terminated list of strings.}
\item{\verb{length}}{return location for a the length of the URI list, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
