\alias{gtkRecentChooserAddFilter}
\name{gtkRecentChooserAddFilter}
\title{gtkRecentChooserAddFilter}
\description{Adds \code{filter} to the list of \code{\link{GtkRecentFilter}} objects held by \code{chooser}.}
\usage{gtkRecentChooserAddFilter(object, filter)}
\arguments{
\item{\code{object}}{[\code{\link{GtkRecentChooser}}]  a \code{\link{GtkRecentChooser}}}
\item{\code{filter}}{[\code{\link{GtkRecentFilter}}]  a \code{\link{GtkRecentFilter}}}
}
\details{If no previous filter objects were defined, this function will call
\code{\link{gtkRecentChooserSetFilter}}.  

  Since  2.10}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
