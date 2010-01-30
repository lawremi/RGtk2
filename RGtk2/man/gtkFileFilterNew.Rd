\alias{gtkFileFilterNew}
\name{gtkFileFilterNew}
\title{gtkFileFilterNew}
\description{Creates a new \verb{\link{GtkFileFilter}} with no rules added to it.
Such a filter doesn't accept any files, so is not
particularly useful until you add rules with
\code{\link{gtkFileFilterAddMimeType}}, \code{\link{gtkFileFilterAddPattern}},
or \code{\link{gtkFileFilterAddCustom}}. To create a filter
that accepts any file, use:}
\usage{gtkFileFilterNew()}
\details{\preformatted{
filter <- gtkFileFilter()
filter$addPattern("*")
}  

  Since  2.4}
\value{[\verb{\link{GtkFileFilter}}]  a new \verb{\link{GtkFileFilter}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
