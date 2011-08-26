\alias{gtkContainerChildType}
\name{gtkContainerChildType}
\title{gtkContainerChildType}
\description{Returns the type of the children supported by the container.}
\usage{gtkContainerChildType(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkContainer}}}}
\details{Note that this may return \code{G_TYPE_NONE} to indicate that no more
children can be added, e.g. for a \code{\link{GtkPaned}} which already has two 
children.}
\value{[\code{\link{GType}}] a \code{\link{GType}}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
