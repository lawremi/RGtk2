\alias{gtkRecentChooserSelectUri}
\name{gtkRecentChooserSelectUri}
\title{gtkRecentChooserSelectUri}
\description{Selects \code{uri} inside \code{chooser}.}
\usage{gtkRecentChooserSelectUri(object, uri, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkRecentChooser}}}
\item{\verb{uri}}{a URI}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{Since 2.10}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} if \code{uri} was found.}
\item{\verb{error}}{return location for a \code{\link{GError}}, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
