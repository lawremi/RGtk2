\alias{gtkBoxQueryChildPacking}
\name{gtkBoxQueryChildPacking}
\title{gtkBoxQueryChildPacking}
\description{Obtains information about how \code{child} is packed into \code{box}.}
\usage{gtkBoxQueryChildPacking(object, child)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkBox}}]  a \verb{\link{GtkBox}}}
\item{\verb{child}}{[\verb{\link{GtkWidget}}]  the \verb{\link{GtkWidget}} of the child to query}
}
\value{
A list containing the following elements:
\item{\verb{expand}}{[logical]  pointer to return location for \verb{"expand"} child property }
\item{\verb{fill}}{[logical]  pointer to return location for \verb{"fill"} child property }
\item{\verb{padding}}{[numeric]  pointer to return location for \verb{"padding"} child property }
\item{\verb{pack.type}}{[\code{\link{GtkPackType}}]  pointer to return location for \verb{"pack-type"} child property }
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
