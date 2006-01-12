\alias{gtkBoxQueryChildPacking}
\name{gtkBoxQueryChildPacking}
\title{gtkBoxQueryChildPacking}
\description{Returns information about how \code{child} is packed into \code{box}.}
\usage{gtkBoxQueryChildPacking(object, child)}
\arguments{
\item{\code{object}}{[\code{\link{GtkBox}}] a \code{\link{GtkBox}}.}
\item{\code{child}}{[\code{\link{GtkWidget}}] the \code{\link{GtkWidget}} of the child to query.}
}
\value{
A list containing the following elements:
\item{\code{expand}}{[logical] the returned value of the \code{expand}
field in \code{\link{GtkBoxChild}}.}
\item{\code{fill}}{[logical] the returned value of the \code{fill} field
in \code{\link{GtkBoxChild}}.}
\item{\code{padding}}{[numeric] the returned value of the \code{padding}
field in \code{\link{GtkBoxChild}}.}
\item{\code{pack.type}}{[\code{\link{GtkPackType}}] the returned value of the \code{pack}
field in \code{\link{GtkBoxChild}}.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
