\alias{gtkBoxSetChildPacking}
\name{gtkBoxSetChildPacking}
\title{gtkBoxSetChildPacking}
\description{Sets the way \code{child} is packed into \code{box}.}
\usage{gtkBoxSetChildPacking(object, child, expand, fill, padding, pack.type)}
\arguments{
\item{\code{object}}{[\code{\link{GtkBox}}] a \code{\link{GtkBox}}.}
\item{\code{child}}{[\code{\link{GtkWidget}}] the \code{\link{GtkWidget}} of the child to set.}
\item{\code{expand}}{[logical] the new value of the \code{expand} field
in \code{\link{GtkBoxChild}}.}
\item{\code{fill}}{[logical] the new value of the \code{fill} field in
\code{\link{GtkBoxChild}}.}
\item{\code{padding}}{[numeric] the new value of the \code{padding}
field in \code{\link{GtkBoxChild}}.}
\item{\code{pack.type}}{[\code{\link{GtkPackType}}] the new value of the \code{pack} field
in \code{\link{GtkBoxChild}}.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
