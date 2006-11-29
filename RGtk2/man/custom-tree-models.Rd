\alias{gtkTreeIterGetId}
\alias{gtkTreeIterSetId}
\name{custom-tree-models}
\title{Custom GtkTreeModel implementations}
\description{Functions that allow one to implement a custom \code{\link{GtkTreeModel}}}
\usage{
  gtkTreeIterGetId(iter)
  gtkTreeIterSetId(iter, id)
}
\arguments{
  \item{iter}{The \code{\link{GtkTreeIter}} of a custom model}
  \item{id}{The integer code identifying \code{iter}}
}
\details{These functions allow one to associate integer codes with the
  \code{\link{GtkTreeIter}} structures passed to the \code{\link{GtkTreeModel}}
  virtuals.
}
\value{
  For \code{gtkTreeIterGetId}, the integer code identifying \code{iter}
}
\seealso{gClass}
\author{Michael Lawrence}
\keyword{interface}
\keyword{internal}

