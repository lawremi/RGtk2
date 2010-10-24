\alias{gtkWidgetIntersect}
\name{gtkWidgetIntersect}
\title{gtkWidgetIntersect}
\description{Computes the intersection of a \code{widget}'s area and \code{area}, storing
the intersection in \code{intersection}, and returns \code{TRUE} if there was
an intersection.  \code{intersection} may be \code{NULL} if you're only
interested in whether there was an intersection.}
\usage{gtkWidgetIntersect(object, area, intersection)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkWidget}}}
\item{\verb{area}}{a rectangle}
\item{\verb{intersection}}{rectangle to store intersection of \code{widget} and \code{area}}
}
\value{[logical] \code{TRUE} if there was an intersection}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
