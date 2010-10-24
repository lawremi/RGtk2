\alias{gtkEntryCompletionSetTextColumn}
\name{gtkEntryCompletionSetTextColumn}
\title{gtkEntryCompletionSetTextColumn}
\description{Convenience function for setting up the most used case of this code: a
completion list with just strings. This function will set up \code{completion}
to have a list displaying all (and just) strings in the completion list,
and to get those strings from \code{column} in the model of \code{completion}.}
\usage{gtkEntryCompletionSetTextColumn(object, column)}
\arguments{
\item{\verb{object}}{A \code{\link{GtkEntryCompletion}}.}
\item{\verb{column}}{The column in the model of \code{completion} to get strings from.}
}
\details{This functions creates and adds a \code{\link{GtkCellRendererText}} for the selected 
column. If you need to set the text column, but don't want the cell 
renderer, use \code{\link{gObjectSet}} to set the ::text_column property directly.
  Since 2.4}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
