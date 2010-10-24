\alias{gtkTreeViewSetExpanderColumn}
\name{gtkTreeViewSetExpanderColumn}
\title{gtkTreeViewSetExpanderColumn}
\description{Sets the column to draw the expander arrow at. It must be in \code{tree.view}.  
If \code{column} is \code{NULL}, then the expander arrow is always at the first 
visible column.}
\usage{gtkTreeViewSetExpanderColumn(object, column)}
\arguments{
\item{\verb{object}}{A \code{\link{GtkTreeView}}}
\item{\verb{column}}{\code{NULL}, or the column to draw the expander arrow at.}
}
\details{If you do not want expander arrow to appear in your tree, set the 
expander column to a hidden column.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
