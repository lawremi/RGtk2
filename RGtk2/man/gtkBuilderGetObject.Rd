\alias{gtkBuilderGetObject}
\name{gtkBuilderGetObject}
\title{gtkBuilderGetObject}
\description{Gets the object named \code{name}. Note that this function does not
increment the reference count of the returned object.}
\usage{gtkBuilderGetObject(object, name)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkBuilder}}]  a \verb{\link{GtkBuilder}}}
\item{\verb{name}}{[character]  name of object to get}
}
\details{  Since  2.12}
\value{[\verb{\link{GObject}}]  the object named \code{name} or \code{NULL} if it could not be 
   found in the object tree. }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
