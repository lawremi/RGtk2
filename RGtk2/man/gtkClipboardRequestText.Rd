\alias{gtkClipboardRequestText}
\name{gtkClipboardRequestText}
\title{gtkClipboardRequestText}
\description{Requests the contents of the clipboard as text. When the text is
later received, it will be converted to UTF-8 if necessary, and
\code{callback} will be called. }
\usage{gtkClipboardRequestText(object, callback, user.data = NULL)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkClipboard}}}
\item{\verb{callback}}{a function to call when the text is received,
or the retrieval fails. (It will always be called
one way or the other.)}
\item{\verb{user.data}}{user data to pass to \code{callback}.}
}
\details{The \code{text} parameter to \code{callback} will contain the resulting text if
the request succeeded, or \code{NULL} if it failed. This could happen for
various reasons, in particular if the clipboard was empty or if the
contents of the clipboard could not be converted into text form.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
