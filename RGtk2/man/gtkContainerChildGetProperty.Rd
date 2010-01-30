\alias{gtkContainerChildGetProperty}
\name{gtkContainerChildGetProperty}
\title{gtkContainerChildGetProperty}
\description{Gets the value of a child property for \code{child} and \code{container}.}
\usage{gtkContainerChildGetProperty(object, child, property.name)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkContainer}}]  a \verb{\link{GtkContainer}}}
\item{\verb{child}}{[\verb{\link{GtkWidget}}]  a widget which is a child of \code{container}}
\item{\verb{property.name}}{[character]  the name of the property to get}
}
\value{
A list containing the following elements:
\item{\verb{value}}{[R object]  a location to return the value}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
