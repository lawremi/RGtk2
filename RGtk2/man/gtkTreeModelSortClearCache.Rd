\alias{gtkTreeModelSortClearCache}
\name{gtkTreeModelSortClearCache}
\title{gtkTreeModelSortClearCache}
\description{This function should almost never be called.  It clears the \code{tree.model.sort}
of any cached iterators that haven't been reffed with
\code{\link{gtkTreeModelRefNode}}.  This might be useful if the child model being
sorted is static (and doesn't change often) and there has been a lot of
unreffed access to nodes.  As a side effect of this function, all unreffed
iters will be invalid.}
\usage{gtkTreeModelSortClearCache(object)}
\arguments{\item{\verb{object}}{A \code{\link{GtkTreeModelSort}}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
