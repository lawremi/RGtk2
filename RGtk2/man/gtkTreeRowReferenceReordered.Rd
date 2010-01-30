\alias{gtkTreeRowReferenceReordered}
\name{gtkTreeRowReferenceReordered}
\title{gtkTreeRowReferenceReordered}
\description{Lets a set of row reference created by \code{\link{gtkTreeRowReferenceNewProxy}}
know that the model emitted the "rows_reordered" signal.}
\usage{gtkTreeRowReferenceReordered(proxy, path, iter, new.order)}
\arguments{
\item{\verb{proxy}}{[\verb{\link{GObject}}]  A \verb{\link{GObject}}}
\item{\verb{path}}{[\verb{\link{GtkTreePath}}]  The parent path of the reordered signal}
\item{\verb{iter}}{[\verb{\link{GtkTreeIter}}]  The iter pointing to the parent of the reordered}
\item{\verb{new.order}}{[integer]  The new order of rows}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
