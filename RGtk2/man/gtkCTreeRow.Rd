\name{gtkCTreeRow}
\alias{gtkCTreeRow}
\title{gtkCTreeRow}
\description{
  Get the \code{\link{GtkCTreeRow}} structure from the opaque \code{\link{GtkCTreeNode}}.
  This allows traversing the data structure of the \code{\link{GtkCTree}}.
}
\usage{
gtkCTreeRow(node)
}
\arguments{
  \item{node}{ The \code{\link{GtkCTreeNode}} from which to get the \code{\link{GtkCTreeRow}}.}
}
\value{
  A \code{\link{GtkCTreeRow}}
}
\note{
  The \code{\link{GtkCTree}} widget is deprecated. Please consider using
  \code{\link{GtkTreeView}}.
}
\author{ Michael Lawrence }
\keyword{internal}
\keyword{interface}
