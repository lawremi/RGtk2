\alias{gtkTreeRowReferenceReordered}
\name{gtkTreeRowReferenceReordered}
\title{gtkTreeRowReferenceReordered}
\description{Lets a set of row reference created by \code{\link{gtkTreeRowReferenceNewProxy}}
know that the model emitted the "rows_reordered" signal.}
\usage{gtkTreeRowReferenceReordered(proxy, path, iter, new.order)}
\arguments{
\item{\code{proxy}}{[\code{\link{GObject}}]  A \code{\link{GObject}}}
\item{\code{path}}{[\code{\link{GtkTreePath}}]  The parent path of the reordered signal}
\item{\code{iter}}{[\code{\link{GtkTreeIter}}]  The iter pointing to the parent of the reordered}
\item{\code{new.order}}{[integer]  The new order of rows}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
