\alias{gtkTreeRowReferenceDeleted}
\name{gtkTreeRowReferenceDeleted}
\title{gtkTreeRowReferenceDeleted}
\description{Lets a set of row reference created by \code{\link{gtkTreeRowReferenceNewProxy}}
know that the model emitted the "row_deleted" signal.}
\usage{gtkTreeRowReferenceDeleted(proxy, path)}
\arguments{
\item{\code{proxy}}{[\code{\link{GObject}}]  A \code{\link{GObject}}}
\item{\code{path}}{[\code{\link{GtkTreePath}}]  The path position that was deleted}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
