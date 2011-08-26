\alias{gtkBuilderGetObject}
\name{gtkBuilderGetObject}
\title{gtkBuilderGetObject}
\description{Gets the object named \code{name}. Note that this function does not
increment the reference count of the returned object.}
\usage{gtkBuilderGetObject(object, name)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkBuilder}}}
\item{\verb{name}}{name of object to get}
}
\details{Since 2.12}
\value{[\code{\link{GObject}}] the object named \code{name} or \code{NULL} if
it could not be found in the object tree. \emph{[  \acronym{transfer none}  ]}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
