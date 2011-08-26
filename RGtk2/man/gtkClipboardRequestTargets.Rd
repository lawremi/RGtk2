\alias{gtkClipboardRequestTargets}
\name{gtkClipboardRequestTargets}
\title{gtkClipboardRequestTargets}
\description{Requests the contents of the clipboard as list of supported targets. 
When the list is later received, \code{callback} will be called. }
\usage{gtkClipboardRequestTargets(object, callback, user.data = NULL)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkClipboard}}}
\item{\verb{callback}}{a function to call when the targets are received,
or the retrieval fails. (It will always be called
one way or the other.)}
\item{\verb{user.data}}{user data to pass to \code{callback}.}
}
\details{The \code{targets} parameter to \code{callback} will contain the resulting targets if
the request succeeded, or \code{NULL} if it failed.
  Since 2.4}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
