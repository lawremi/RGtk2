\alias{gtkTreeIterGetId}
\alias{gtkTreeIterSetId}
\alias{gtkTreeIterGetStamp}
\alias{gtkTreeIterSetStamp}
\alias{gtkTreeIter}
\name{custom-tree-models}
\title{Custom GtkTreeModel implementations}
\description{Functions that allow one to implement a custom \code{\link{GtkTreeModel}}}
\usage{
  gtkTreeIter(id, stamp)
  gtkTreeIterGetId(iter)
  gtkTreeIterSetId(iter, id)
  gtkTreeIterGetStamp(iter)
  gtkTreeIterSetStamp(iter, stamp)
}
\arguments{
  \item{iter}{The \code{\link{GtkTreeIter}} of a custom model}
  \item{id}{The integer code identifying \code{iter}}
  \item{stamp}{The integer code for tracking the version of \code{iter}}
}
\details{
  These functions allow one to create and access
  \code{\link{GtkTreeIter}} structures when implementing a \code{\link{GtkTreeModel}}.
  
  \code{gtkTreeIter} creates an iter from scratch, given an id and stamp.
  
  \code{gtkTreeIterGetId} and \code{gtkTreeIterSetId} access the integer that
  identifies the data element referred to by \code{iter}.
  
  \code{gtkTreeIterGetStamp} and \code{gtkTreeIterSetStamp} access the integer
  that serves as a version stamp. After the model changes, the model version
  should be incremented, so that all existing iters are invalidated, as
  evidenced by their stamp.
}
\value{
  For \code{gtkTreeIter}, an external pointer to the underlying C structure.
  
  For \code{gtkTreeIterGetId}, the integer code identifying the element
  referred to by \code{iter}.
  
  For \code{gtkTreeIterGetStamp}, the integer code identifying the version
  of \code{iter}.
}
\note{
  These functions are for implementing \code{\link{GtkTreeModel}}s only! Most
  of the time, one can use one of the implementations included with GTK+ 
  (\code{\link{GtkListStore}} or \code{\link{GtkTreeStore}}) or
  \code{\link{RGtkDataFrame}}.
}
\seealso{gClass}
\author{Michael Lawrence}
\keyword{interface}
\keyword{internal}

