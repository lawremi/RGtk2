\alias{gtkTreeViewGetVisibleRect}
\name{gtkTreeViewGetVisibleRect}
\title{gtkTreeViewGetVisibleRect}
\description{Fills \code{visible.rect} with the currently-visible region of the
buffer, in tree coordinates. Convert to bin_window coordinates with
\code{\link{gtkTreeViewConvertTreeToBinWindowCoords}}.
Tree coordinates start at 0,0 for row 0 of the tree, and cover the entire
scrollable area of the tree.}
\usage{gtkTreeViewGetVisibleRect(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkTreeView}}}}
\value{
A list containing the following elements:
\item{\verb{visible.rect}}{rectangle to fill}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
