\alias{gtkRecentFilterNew}
\name{gtkRecentFilterNew}
\title{gtkRecentFilterNew}
\description{Creates a new \verb{\link{GtkRecentFilter}} with no rules added to it.
Such filter does not accept any recently used resources, so is not
particularly useful until you add rules with
\code{\link{gtkRecentFilterAddPattern}}, \code{\link{gtkRecentFilterAddMimeType}},
\code{\link{gtkRecentFilterAddApplication}}, \code{\link{gtkRecentFilterAddAge}}.
To create a filter that accepts any recently used resource, use:}
\usage{gtkRecentFilterNew()}
\details{\preformatted{
filter <- gtkRecentFilter()
filter$addPattern("*")
}  

  Since  2.10}
\value{[\verb{\link{GtkRecentFilter}}]  a new \verb{\link{GtkRecentFilter}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
