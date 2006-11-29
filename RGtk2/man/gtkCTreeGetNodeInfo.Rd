\alias{gtkCTreeGetNodeInfo}
\name{gtkCTreeGetNodeInfo}
\title{gtkCTreeGetNodeInfo}
\description{
Get information corresponding to a node.
Any of the return parameters can be null. 
\strong{WARNING: \code{gtk_ctree_get_node_info} is deprecated and should not be used in newly-written code.}
}
\usage{gtkCTreeGetNodeInfo(object, node)}
\arguments{
\item{\code{object}}{[\code{\link{GtkCTree}}] }
\item{\code{node}}{[\code{\link{GtkCTreeNode}}] }
}
\value{
A list containing the following elements:
\item{\code{text}}{[character] }
\item{\code{spacing}}{[raw] }
\item{\code{pixmap.closed}}{[\code{\link{GdkPixmap}}] }
\item{\code{mask.closed}}{[\code{\link{GdkBitmap}}] }
\item{\code{pixmap.opened}}{[\code{\link{GdkPixmap}}] }
\item{\code{mask.opened}}{[\code{\link{GdkBitmap}}] }
\item{\code{is.leaf}}{[logical] }
\item{\code{expanded}}{[logical] }
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
