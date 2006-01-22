\alias{gtkCTreeNodeGetPixtext}
\name{gtkCTreeNodeGetPixtext}
\title{gtkCTreeNodeGetPixtext}
\description{
Get the parameters of a cell containing both a pixmap and text.
\strong{WARNING: \code{gtk_ctree_node_get_pixtext} is deprecated and should not be used in newly-written code.  
Get the parameters of a cell containing both a pixmap and text.}
}
\usage{gtkCTreeNodeGetPixtext(object, node, column)}
\arguments{
\item{\code{object}}{[\code{\link{GtkCTree}}] }
\item{\code{node}}{[\code{\link{GtkCTreeNode}}] }
\item{\code{column}}{[integer] }
}
\value{
A list containing the following elements:
\item{\code{text}}{[character] }
\item{\code{spacing}}{[integer] }
\item{\code{pixmap}}{[\code{\link{GdkPixmap}}] }
\item{\code{mask}}{[\code{\link{GdkBitmap}}] }
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
