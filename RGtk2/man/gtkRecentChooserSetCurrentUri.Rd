\alias{gtkRecentChooserSetCurrentUri}
\name{gtkRecentChooserSetCurrentUri}
\title{gtkRecentChooserSetCurrentUri}
\description{Sets \code{uri} as the current URI for \code{chooser}.}
\usage{gtkRecentChooserSetCurrentUri(object, uri, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkRecentChooser}}}
\item{\verb{uri}}{a URI}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{Since 2.10}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} if the URI was found.}
\item{\verb{error}}{return location for a \code{\link{GError}}, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
