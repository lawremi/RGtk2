\alias{gtkTreeRowReferenceNew}
\name{gtkTreeRowReferenceNew}
\title{gtkTreeRowReferenceNew}
\description{Creates a row reference based on \code{path}.  This reference will keep pointing to
the node pointed to by \code{path}, so long as it exists.  It listens to all
signals emitted by \code{model}, and updates its path appropriately.  If \code{path}
isn't a valid path in \code{model}, then \code{NULL} is returned.}
\usage{gtkTreeRowReferenceNew(model, path)}
\arguments{
\item{\code{model}}{[\code{\link{GtkTreeModel}}]  A \code{\link{GtkTreeModel}}}
\item{\code{path}}{[\code{\link{GtkTreePath}}]  A valid \code{\link{GtkTreePath}} to monitor}
}
\value{[\code{\link{GtkTreeRowReference}}]  A newly allocated \code{\link{GtkTreeRowReference}}, or \code{NULL}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
