\alias{gtkContainerChildType}
\name{gtkContainerChildType}
\title{gtkContainerChildType}
\description{Returns the type of the children supported by the container.}
\usage{gtkContainerChildType(object)}
\arguments{\item{\verb{object}}{[\verb{\link{GtkContainer}}]  a \verb{\link{GtkContainer}}}}
\details{Note that this may return \code{G_TYPE_NONE} to indicate that no more
children can be added, e.g. for a \verb{\link{GtkPaned}} which already has two 
children.  }
\value{[\verb{\link{GType}}]  a \verb{\link{GType}}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
