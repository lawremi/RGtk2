\alias{gtkContainerForall}
\name{gtkContainerForall}
\title{gtkContainerForall}
\description{Invokes \code{callback} on each child of \code{container}, including children
that are considered "internal" (implementation details of the
container). "Internal" children generally weren't added by the user
of the container, but were added by the container implementation
itself.  Most applications should use \code{\link{gtkContainerForeach}},
rather than \code{\link{gtkContainerForall}}.}
\usage{gtkContainerForall(object, callback, callback.data = NULL)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkContainer}}}
\item{\verb{callback}}{a callback}
\item{\verb{callback.data}}{callback user data}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
