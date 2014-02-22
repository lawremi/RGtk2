\alias{gtkCTreeInsertNode}
\name{gtkCTreeInsertNode}
\title{gtkCTreeInsertNode}
\description{
Insert a new node to the tree. The position is specified through
the parent-sibling notation, as explained in the introduction above.
\strong{WARNING: \code{gtk_ctree_insert_node} is deprecated and should not be used in newly-written code.}
}
\usage{gtkCTreeInsertNode(object, parent, sibling, text, spacing = 5, 
    pixmap.closed = NULL, mask.closed = NULL, pixmap.opened = NULL, 
    mask.opened = NULL, is.leaf = 1, expanded = 0)}
\arguments{
\item{\verb{object}}{The \code{\link{GtkCTree}} widget.}
\item{\verb{parent}}{The parent node to be.}
\item{\verb{sibling}}{The sibling node to be.}
\item{\verb{text}}{The texts to be shown in each column.}
\item{\verb{spacing}}{The extra space between the pixmap and the text.}
\item{\verb{pixmap.closed}}{. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{mask.closed}}{. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{pixmap.opened}}{. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{mask.opened}}{. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{is.leaf}}{Whether this node is going to be a leaf.}
\item{\verb{expanded}}{Whether this node should start out expanded or not.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
