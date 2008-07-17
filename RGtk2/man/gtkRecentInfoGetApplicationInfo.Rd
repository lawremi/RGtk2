\alias{gtkRecentInfoGetApplicationInfo}
\name{gtkRecentInfoGetApplicationInfo}
\title{gtkRecentInfoGetApplicationInfo}
\description{Gets the data regarding the application that has registered the resource
pointed by \code{info}.}
\usage{gtkRecentInfoGetApplicationInfo(object, app.name)}
\arguments{
\item{\code{object}}{[\code{\link{GtkRecentInfo}}]  a \code{\link{GtkRecentInfo}}}
\item{\code{app.name}}{[character]  the name of the application that has registered this item}
}
\details{If the command line contains any escape characters defined inside the
storage specification, they will be expanded.  

  Since  2.10}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} if an application with \code{app.name} has registered this
  resource inside the recently used list, or \code{FALSE} otherwise.}
\item{\code{app.exec}}{[character]  return location for the string containing the command line}
\item{\code{count}}{[numeric]  return location for the number of times this item was registered}
\item{\code{time.}}{[integer]  return location for the timestamp this item was last registered
   for this application}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
