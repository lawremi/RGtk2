\alias{gtkShowUri}
\name{gtkShowUri}
\title{gtkShowUri}
\description{This is a convenience function for launching the default application
to show the uri. The uri must be of a form understood by GIO. Typical
examples are
\itemize{
\item \file{file:///home/gnome/pict.jpg}
\item \file{http://www.gnome.org}
\item \file{mailto:me}
}
Ideally the timestamp is taken from the event triggering
the \code{\link{gtkShowUri}} call. If timestamp is not known you can take
\code{GDK_CURRENT_TIME}.}
\usage{gtkShowUri(screen = NULL, uri, timestamp, .errwarn = TRUE)}
\arguments{
\item{\verb{screen}}{screen to show the uri on or \code{NULL} for the default screen. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{uri}}{the uri to show}
\item{\verb{timestamp}}{a timestamp to prevent focus stealing.}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{This function can be used as a replacement for \code{gnomeVfsUrlShow()}
and \code{gnomeUrlShow()}.
  Since 2.14}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} on success, \code{FALSE} on error.}
\item{\verb{error}}{a \code{\link{GError}} that is returned in case of errors}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
