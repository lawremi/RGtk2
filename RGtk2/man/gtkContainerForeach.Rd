\alias{gtkContainerForeach}
\name{gtkContainerForeach}
\title{gtkContainerForeach}
\description{Invokes \code{callback} on each non-internal child of \code{container}. See
\code{\link{gtkContainerForall}} for details on what constitutes an
"internal" child.  Most applications should use
\code{\link{gtkContainerForeach}}, rather than \code{\link{gtkContainerForall}}.}
\usage{gtkContainerForeach(object, callback, callback.data = NULL)}
\arguments{
\item{\code{object}}{[\code{\link{GtkContainer}}]  a \code{\link{GtkContainer}}}
\item{\code{callback}}{[\code{\link{GtkCallback}}]  a callback}
\item{\code{callback.data}}{[R object]  callback user data}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
