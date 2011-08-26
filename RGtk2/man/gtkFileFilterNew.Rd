\alias{gtkFileFilterNew}
\name{gtkFileFilterNew}
\title{gtkFileFilterNew}
\description{Creates a new \code{\link{GtkFileFilter}} with no rules added to it.
Such a filter doesn't accept any files, so is not
particularly useful until you add rules with
\code{\link{gtkFileFilterAddMimeType}}, \code{\link{gtkFileFilterAddPattern}},
or \code{\link{gtkFileFilterAddCustom}}. To create a filter
that accepts any file, use:
\preformatted{
filter <- gtkFileFilter()
filter$addPattern("*")
}}
\usage{gtkFileFilterNew()}
\details{Since 2.4}
\value{[\code{\link{GtkFileFilter}}] a new \code{\link{GtkFileFilter}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
