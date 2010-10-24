\alias{gtkTreeRowReferenceReordered}
\name{gtkTreeRowReferenceReordered}
\title{gtkTreeRowReferenceReordered}
\description{Lets a set of row reference created by \code{\link{gtkTreeRowReferenceNewProxy}}
know that the model emitted the "rows_reordered" signal.}
\usage{gtkTreeRowReferenceReordered(proxy, path, iter, new.order)}
\arguments{
\item{\verb{proxy}}{A \code{\link{GObject}}}
\item{\verb{path}}{The parent path of the reordered signal}
\item{\verb{iter}}{The iter pointing to the parent of the reordered}
\item{\verb{new.order}}{The new order of rows}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
