\alias{gtkBoxQueryChildPacking}
\name{gtkBoxQueryChildPacking}
\title{gtkBoxQueryChildPacking}
\description{Obtains information about how \code{child} is packed into \code{box}.}
\usage{gtkBoxQueryChildPacking(object, child)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkBox}}}
\item{\verb{child}}{the \code{\link{GtkWidget}} of the child to query}
}
\value{
A list containing the following elements:
\item{\verb{expand}}{pointer to return location for \verb{"expand"} child property}
\item{\verb{fill}}{pointer to return location for \verb{"fill"} child property}
\item{\verb{padding}}{pointer to return location for \verb{"padding"} child property}
\item{\verb{pack.type}}{pointer to return location for \verb{"pack-type"} child property}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
