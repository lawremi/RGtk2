\alias{gtkRecentInfoGetApplicationInfo}
\name{gtkRecentInfoGetApplicationInfo}
\title{gtkRecentInfoGetApplicationInfo}
\description{Gets the data regarding the application that has registered the resource
pointed by \code{info}.}
\usage{gtkRecentInfoGetApplicationInfo(object, app.name)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkRecentInfo}}}
\item{\verb{app.name}}{the name of the application that has registered this item}
}
\details{If the command line contains any escape characters defined inside the
storage specification, they will be expanded.
  Since 2.10}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} if an application with \code{app.name} has registered this
resource inside the recently used list, or \code{FALSE} otherwise.}
\item{\verb{app.exec}}{return location for the string containing the command line. \emph{[  \acronym{transfer none}  ][  \acronym{out}  ]}}
\item{\verb{count}}{return location for the number of times this item was registered. \emph{[  \acronym{out}  ]}}
\item{\verb{time.}}{return location for the timestamp this item was last registered
for this application. \emph{[  \acronym{out}  ]}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
