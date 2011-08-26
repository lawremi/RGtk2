\alias{gtkRecentManagerMoveItem}
\name{gtkRecentManagerMoveItem}
\title{gtkRecentManagerMoveItem}
\description{Changes the location of a recently used resource from \code{uri} to \code{new.uri}.}
\usage{gtkRecentManagerMoveItem(object, uri, new.uri, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkRecentManager}}}
\item{\verb{uri}}{the URI of a recently used resource}
\item{\verb{new.uri}}{the new URI of the recently used resource, or \code{NULL} to
remove the item pointed by \code{uri} in the list. \emph{[  \acronym{allow-none}  ]}}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{Please note that this function will not affect the resource pointed
by the URIs, but only the URI used in the recently used resources list.
  Since 2.10}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} on success.}
\item{\verb{error}}{a return location for a \code{\link{GError}}, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
