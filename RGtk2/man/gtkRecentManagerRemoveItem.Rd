\alias{gtkRecentManagerRemoveItem}
\name{gtkRecentManagerRemoveItem}
\title{gtkRecentManagerRemoveItem}
\description{Removes a resource pointed by \code{uri} from the recently used resources
list handled by a recent manager.}
\usage{gtkRecentManagerRemoveItem(object, uri, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkRecentManager}}]  a \verb{\link{GtkRecentManager}}}
\item{\verb{uri}}{[character]  the URI of the item you wish to remove}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{  Since  2.10}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} if the item pointed by \code{uri} has been successfully
  removed by the recently used resources list, and \code{FALSE} otherwise.}
\item{\verb{error}}{[\verb{\link{GError}}]  return location for a \verb{\link{GError}}, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
