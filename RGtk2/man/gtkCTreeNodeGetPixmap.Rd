\alias{gtkCTreeNodeGetPixmap}
\name{gtkCTreeNodeGetPixmap}
\title{gtkCTreeNodeGetPixmap}
\description{

\strong{WARNING: \code{gtk_ctree_node_get_pixmap} is deprecated and should not be used in newly-written code.}
}
\usage{gtkCTreeNodeGetPixmap(object, node, column)}
\arguments{
\item{\verb{object}}{If nonnull, the pointer to the pixmap is returned through this.}
\item{\verb{node}}{If nonnull, the pointer to the mask is returned through this.}
\item{\verb{column}}{True if the given cell contains a pixmap.}
}
\value{
A list containing the following elements:
\item{retval}{[logical] True if the given cell contains a pixmap.}
\item{\verb{pixmap}}{\emph{undocumented
}}
\item{\verb{mask}}{\emph{undocumented
}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
