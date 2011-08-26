\alias{gtkTreeModelIterNChildren}
\name{gtkTreeModelIterNChildren}
\title{gtkTreeModelIterNChildren}
\description{Returns the number of children that \code{iter} has.  As a special case, if \code{iter}
is \code{NULL}, then the number of toplevel nodes is returned.}
\usage{gtkTreeModelIterNChildren(object, iter = NULL)}
\arguments{
\item{\verb{object}}{A \code{\link{GtkTreeModel}}.}
\item{\verb{iter}}{The \code{\link{GtkTreeIter}}, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
}
\value{[integer] The number of children of \code{iter}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
