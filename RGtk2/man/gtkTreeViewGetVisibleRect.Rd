\alias{gtkTreeViewGetVisibleRect}
\name{gtkTreeViewGetVisibleRect}
\title{gtkTreeViewGetVisibleRect}
\description{Fills \code{visible.rect} with the currently-visible region of the
buffer, in tree coordinates. Convert to bin\_window coordinates with
\code{\link{gtkTreeViewConvertTreeToBinWindowCoords}}.
Tree coordinates start at 0,0 for row 0 of the tree, and cover the entire
scrollable area of the tree.}
\usage{gtkTreeViewGetVisibleRect(object)}
\arguments{\item{\code{object}}{[\code{\link{GtkTreeView}}]  a \code{\link{GtkTreeView}}}}
\value{
A list containing the following elements:
\item{\code{visible.rect}}{[\code{\link{GdkRectangle}}]  rectangle to fill}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
