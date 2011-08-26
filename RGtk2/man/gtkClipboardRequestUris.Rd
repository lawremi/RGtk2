\alias{gtkClipboardRequestUris}
\name{gtkClipboardRequestUris}
\title{gtkClipboardRequestUris}
\description{Requests the contents of the clipboard as URIs. When the URIs are
later received \code{callback} will be called.}
\usage{gtkClipboardRequestUris(object, callback, user.data)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkClipboard}}}
\item{\verb{callback}}{a function to call when the URIs are received,
or the retrieval fails. (It will always be called
one way or the other.)}
\item{\verb{user.data}}{user data to pass to \code{callback}.}
}
\details{The \code{uris} parameter to \code{callback} will contain the resulting list of
URIs if the request succeeded, or \code{NULL} if it failed. This could happen
for various reasons, in particular if the clipboard was empty or if the
contents of the clipboard could not be converted into URI form.
  Since 2.14}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
