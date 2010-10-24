\alias{gtkEntryCompletionSetMatchFunc}
\name{gtkEntryCompletionSetMatchFunc}
\title{gtkEntryCompletionSetMatchFunc}
\description{Sets the match function for \code{completion} to be \code{func}. The match function
is used to determine if a row should or should not be in the completion
list.}
\usage{gtkEntryCompletionSetMatchFunc(object, func, func.data = NULL)}
\arguments{
\item{\verb{object}}{A \code{\link{GtkEntryCompletion}}.}
\item{\verb{func}}{The \code{\link{GtkEntryCompletionMatchFunc}} to use.}
\item{\verb{func.data}}{The user data for \code{func}.}
}
\details{Since 2.4}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
