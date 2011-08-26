\alias{gtkTreeViewColumnGetTreeView}
\name{gtkTreeViewColumnGetTreeView}
\title{gtkTreeViewColumnGetTreeView}
\description{Returns the \code{\link{GtkTreeView}} wherein \code{tree.column} has been inserted.  If
\code{column} is currently not inserted in any tree view, \code{NULL} is
returned.}
\usage{gtkTreeViewColumnGetTreeView(object)}
\arguments{\item{\verb{object}}{A \code{\link{GtkTreeViewColumn}}}}
\details{Since 2.12}
\value{[\code{\link{GtkWidget}}] The tree view wherein \code{column} has been inserted if any,
\code{NULL} otherwise.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
