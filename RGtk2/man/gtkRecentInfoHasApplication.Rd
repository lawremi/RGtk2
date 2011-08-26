\alias{gtkRecentInfoHasApplication}
\name{gtkRecentInfoHasApplication}
\title{gtkRecentInfoHasApplication}
\description{Checks whether an application registered this resource using \code{app.name}.}
\usage{gtkRecentInfoHasApplication(object, app.name)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkRecentInfo}}}
\item{\verb{app.name}}{a string containing an application name}
}
\details{Since 2.10}
\value{[logical] \code{TRUE} if an application with name \code{app.name} was found,
\code{FALSE} otherwise.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
