\alias{gtkRecentChooserSetCurrentUri}
\name{gtkRecentChooserSetCurrentUri}
\title{gtkRecentChooserSetCurrentUri}
\description{Sets \code{uri} as the current URI for \code{chooser}.}
\usage{gtkRecentChooserSetCurrentUri(object, uri, .errwarn = TRUE)}
\arguments{
\item{\code{object}}{[\code{\link{GtkRecentChooser}}]  a \code{\link{GtkRecentChooser}}}
\item{\code{uri}}{[character]  a URI}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{  Since  2.10}
\value{
A list containing the following elements:
\item{retval}{[logical]  \code{TRUE} if the URI was found.}
\item{\code{error}}{[\code{\link{GError}}]  return location for a \code{\link{GError}}, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
