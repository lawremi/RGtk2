\alias{gtkTreeSetRowDragData}
\name{gtkTreeSetRowDragData}
\title{gtkTreeSetRowDragData}
\description{Sets selection data of target type \code{GTK_TREE_MODEL_ROW}. Normally used
in a drag_data_get handler.}
\usage{gtkTreeSetRowDragData(object, tree.model, path)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkSelectionData}}]  some \verb{\link{GtkSelectionData}}}
\item{\verb{tree.model}}{[\verb{\link{GtkTreeModel}}]  a \verb{\link{GtkTreeModel}}}
\item{\verb{path}}{[\verb{\link{GtkTreePath}}]  a row in \code{tree.model}}
}
\value{[logical] \code{TRUE} if the \verb{\link{GtkSelectionData}} had the proper target type to allow us to set a tree row}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
