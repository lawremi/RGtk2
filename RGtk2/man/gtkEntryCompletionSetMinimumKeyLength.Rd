\alias{gtkEntryCompletionSetMinimumKeyLength}
\name{gtkEntryCompletionSetMinimumKeyLength}
\title{gtkEntryCompletionSetMinimumKeyLength}
\description{Requires the length of the search key for \code{completion} to be at least
\code{length}. This is useful for long lists, where completing using a small
key takes a lot of time and will come up with meaningless results anyway
(ie, a too large dataset).}
\usage{gtkEntryCompletionSetMinimumKeyLength(object, length)}
\arguments{
\item{\verb{object}}{A \code{\link{GtkEntryCompletion}}.}
\item{\verb{length}}{The minimum length of the key in order to start completing.}
}
\details{Since 2.4}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
