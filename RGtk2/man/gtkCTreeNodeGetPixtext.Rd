\alias{gtkCTreeNodeGetPixtext}
\name{gtkCTreeNodeGetPixtext}
\title{gtkCTreeNodeGetPixtext}
\description{
Get the parameters of a cell containing both a pixmap and text.
\strong{WARNING: \code{gtk_ctree_node_get_pixtext} is deprecated and should not be used in newly-written code.}
}
\usage{gtkCTreeNodeGetPixtext(object, node, column)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkCTree}}] }
\item{\verb{node}}{[\verb{\link{GtkCTreeNode}}] }
\item{\verb{column}}{[integer] }
}
\value{
A list containing the following elements:
\item{\verb{text}}{[character] }
\item{\verb{spacing}}{[raw] }
\item{\verb{pixmap}}{[\verb{\link{GdkPixmap}}] }
\item{\verb{mask}}{[\verb{\link{GdkBitmap}}] }
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
