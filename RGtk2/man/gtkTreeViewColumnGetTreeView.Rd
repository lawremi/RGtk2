\alias{gtkTreeViewColumnGetTreeView}
\name{gtkTreeViewColumnGetTreeView}
\title{gtkTreeViewColumnGetTreeView}
\description{Returns the \verb{\link{GtkTreeView}} wherein \code{tree.column} has been inserted.  If
\code{column} is currently not inserted in any tree view, \code{NULL} is
returned.}
\usage{gtkTreeViewColumnGetTreeView(object)}
\arguments{\item{\verb{object}}{[\verb{\link{GtkTreeViewColumn}}]  A \verb{\link{GtkTreeViewColumn}}}}
\details{  Since  2.12}
\value{[\verb{\link{GtkWidget}}]  The tree view wherein \code{column} has been inserted if any,
              \code{NULL} otherwise.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
