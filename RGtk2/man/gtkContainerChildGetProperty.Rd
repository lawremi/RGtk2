\alias{gtkContainerChildGetProperty}
\name{gtkContainerChildGetProperty}
\title{gtkContainerChildGetProperty}
\description{Gets the value of a child property for \code{child} and \code{container}.}
\usage{gtkContainerChildGetProperty(object, child, property.name)}
\arguments{
\item{\code{object}}{[\code{\link{GtkContainer}}]  a \code{\link{GtkContainer}}}
\item{\code{child}}{[\code{\link{GtkWidget}}]  a widget which is a child of \code{container}}
\item{\code{property.name}}{[character]  the name of the property to get}
}
\value{
A list containing the following elements:
\item{\code{value}}{[R object]  a location to return the value}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
