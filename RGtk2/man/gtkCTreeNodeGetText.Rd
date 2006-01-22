\alias{gtkCTreeNodeGetText}
\name{gtkCTreeNodeGetText}
\title{gtkCTreeNodeGetText}
\description{

\strong{WARNING: \code{gtk_ctree_node_get_text} is deprecated and should not be used in newly-written code.  }
}
\usage{gtkCTreeNodeGetText(object, node, column)}
\arguments{
\item{\code{object}}{[\code{\link{GtkCTree}}] }
\item{\code{node}}{[\code{\link{GtkCTreeNode}}] }
\item{\code{column}}{[integer] }
}
\value{
A list containing the following elements:
\item{retval}{[logical] True if the given cell has text in it.}
\item{\code{text}}{[character] If nonnull, the pointer to the text string is assigned to *\code{text}.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
