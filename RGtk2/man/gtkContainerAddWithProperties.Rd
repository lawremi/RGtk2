\alias{gtkContainerAddWithProperties}
\name{gtkContainerAddWithProperties}
\title{gtkContainerAddWithProperties}
\description{Adds \code{widget} to \code{container}, setting child properties at the same time.
See \code{\link{gtkContainerAdd}} and \code{\link{gtkContainerChildSet}} for more details.}
\usage{gtkContainerAddWithProperties(object, widget, ...)}
\arguments{
\item{\code{object}}{[\code{\link{GtkContainer}}]  a \code{\link{GtkContainer}} }
\item{\code{widget}}{[\code{\link{GtkWidget}}]  a widget to be placed inside \code{container} }
\item{\code{...}}{ a list of property names and values, starting
          with \code{first.prop.name}.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
