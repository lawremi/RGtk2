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
\item{\verb{object}}{[\verb{\link{GtkCTree}}] }
\item{\verb{node}}{[\verb{\link{GtkCTreeNode}}] }
}
\value{
A list containing the following elements:
\item{\verb{text}}{[character] }
\item{\verb{spacing}}{[raw] }
\item{\verb{pixmap.closed}}{[\verb{\link{GdkPixmap}}] }
\item{\verb{mask.closed}}{[\verb{\link{GdkBitmap}}] }
\item{\verb{pixmap.opened}}{[\verb{\link{GdkPixmap}}] }
\item{\verb{mask.opened}}{[\verb{\link{GdkBitmap}}] }
\item{\verb{is.leaf}}{[logical] }
\item{\verb{expanded}}{[logical] }
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
