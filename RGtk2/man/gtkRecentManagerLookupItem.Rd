\alias{gtkRecentManagerLookupItem}
\name{gtkRecentManagerLookupItem}
\title{gtkRecentManagerLookupItem}
\description{Searches for a URI inside the recently used resources list, and
returns a structure containing informations about the resource
like its MIME type, or its display name.}
\usage{gtkRecentManagerLookupItem(object, uri, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkRecentManager}}]  a \verb{\link{GtkRecentManager}}}
\item{\verb{uri}}{[character]  a URI}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{  Since  2.10}
\value{
A list containing the following elements:
\item{retval}{[\verb{\link{GtkRecentInfo}}]  a \verb{\link{GtkRecentInfo}} structure containing information
  about the resource pointed by \code{uri}, or \code{NULL} if the URI was
  not registered in the recently used resources list.  Free with
  \code{\link{gtkRecentInfoUnref}}.}
\item{\verb{error}}{[\verb{\link{GError}}]  a return location for a \verb{\link{GError}}, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
