\alias{gtkTreeSetRowDragData}
\name{gtkTreeSetRowDragData}
\title{gtkTreeSetRowDragData}
\description{Sets selection data of target type \code{GTK_TREE_MODEL_ROW}. Normally used
in a drag\_data\_get handler.}
\usage{gtkTreeSetRowDragData(object, tree.model, path)}
\arguments{
\item{\code{object}}{[\code{\link{GtkSelectionData}}]  some \code{\link{GtkSelectionData}}}
\item{\code{tree.model}}{[\code{\link{GtkTreeModel}}]  a \code{\link{GtkTreeModel}}}
\item{\code{path}}{[\code{\link{GtkTreePath}}]  a row in \code{tree.model}}
}
\value{[logical]  \code{TRUE} if the \code{\link{GtkSelectionData}} had the proper target type to allow us to set a tree row}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
