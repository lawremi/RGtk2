\alias{gtkBoxQueryChildPacking}
\name{gtkBoxQueryChildPacking}
\title{gtkBoxQueryChildPacking}
\description{Obtains information about how \code{child} is packed into \code{box}.}
\usage{gtkBoxQueryChildPacking(object, child)}
\arguments{
\item{\code{object}}{[\code{\link{GtkBox}}]  a \code{\link{GtkBox}}}
\item{\code{child}}{[\code{\link{GtkWidget}}]  the \code{\link{GtkWidget}} of the child to query}
}
\value{
A list containing the following elements:
\item{\code{expand}}{[logical]  pointer to return location for \code{"expand"} child property }
\item{\code{fill}}{[logical]  pointer to return location for \code{"fill"} child property }
\item{\code{padding}}{[numeric]  pointer to return location for \code{"padding"} child property }
\item{\code{pack.type}}{[\code{\link{GtkPackType}}]  pointer to return location for \code{"pack-type"} child property }
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
