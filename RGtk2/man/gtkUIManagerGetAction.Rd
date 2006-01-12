\alias{gtkUIManagerGetAction}
\name{gtkUIManagerGetAction}
\title{gtkUIManagerGetAction}
\description{Looks up an action by following a path. See \code{\link{gtkUIManagerGetWidget}}
for more information about paths.}
\usage{gtkUIManagerGetAction(object, path)}
\arguments{
\item{\code{object}}{[\code{\link{GtkUIManager}}]  a \code{\link{GtkUIManager}}}
\item{\code{path}}{[character]  a path}
}
\details{  Since  2.4}
\value{[\code{\link{GtkAction}}]  the action whose proxy widget is found by following the path, 
    or \code{NULL} if no widget was found.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
