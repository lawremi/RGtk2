\alias{gtkRecentChooserAddFilter}
\name{gtkRecentChooserAddFilter}
\title{gtkRecentChooserAddFilter}
\description{Adds \code{filter} to the list of \verb{\link{GtkRecentFilter}} objects held by \code{chooser}.}
\usage{gtkRecentChooserAddFilter(object, filter)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkRecentChooser}}]  a \verb{\link{GtkRecentChooser}}}
\item{\verb{filter}}{[\verb{\link{GtkRecentFilter}}]  a \verb{\link{GtkRecentFilter}}}
}
\details{If no previous filter objects were defined, this function will call
\code{\link{gtkRecentChooserSetFilter}}.  

  Since  2.10}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
