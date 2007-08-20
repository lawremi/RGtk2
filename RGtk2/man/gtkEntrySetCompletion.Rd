\alias{gtkEntrySetCompletion}
\name{gtkEntrySetCompletion}
\title{gtkEntrySetCompletion}
\description{Sets \code{completion} to be the auxiliary completion object to use with \code{entry}.
All further configuration of the completion mechanism is done on
\code{completion} using the \code{\link{GtkEntryCompletion}} API. Completion is disabled if
\code{completion} is set to \code{NULL}.}
\usage{gtkEntrySetCompletion(object, completion)}
\arguments{
\item{\code{object}}{[\code{\link{GtkEntry}}]  A \code{\link{GtkEntry}}}
\item{\code{completion}}{[\code{\link{GtkEntryCompletion}}]  The \code{\link{GtkEntryCompletion}} or \code{NULL}}
}
\details{  Since  2.4}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
