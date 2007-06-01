\alias{gtkRecentManagerPurgeItems}
\name{gtkRecentManagerPurgeItems}
\title{gtkRecentManagerPurgeItems}
\description{Purges every item from the recently used resources list.}
\usage{gtkRecentManagerPurgeItems(object, .errwarn = TRUE)}
\arguments{
\item{\code{object}}{[\code{\link{GtkRecentManager}}]  a \code{\link{GtkRecentManager}}}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{  Since  2.10}
\value{
A list containing the following elements:
\item{retval}{[integer]  the number of items that have been removed from the
  recently used resources list.}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
