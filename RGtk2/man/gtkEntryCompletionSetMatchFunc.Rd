\alias{gtkEntryCompletionSetMatchFunc}
\name{gtkEntryCompletionSetMatchFunc}
\title{gtkEntryCompletionSetMatchFunc}
\description{Sets the match function for \code{completion} to be \code{func}. The match function
is used to determine if a row should or should not be in the completion
list.}
\usage{gtkEntryCompletionSetMatchFunc(object, func, func.data = NULL)}
\arguments{
\item{\code{object}}{[\code{\link{GtkEntryCompletion}}]  A \code{\link{GtkEntryCompletion}}.}
\item{\code{func}}{[\code{\link{GtkEntryCompletionMatchFunc}}]  The \code{\link{GtkEntryCompletionMatchFunc}} to use.}
\item{\code{func.data}}{[R object]  The user data for \code{func}.}
}
\details{  Since  2.4}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
