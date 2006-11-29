\alias{gtkTreeViewGetCursor}
\name{gtkTreeViewGetCursor}
\title{gtkTreeViewGetCursor}
\description{Fills in \code{path} and \code{focus.column} with the current path and focus column.  If
the cursor isn't currently set, then *\code{path} will be \code{NULL}.  If no column
currently has focus, then *\code{focus.column} will be \code{NULL}.}
\usage{gtkTreeViewGetCursor(object)}
\arguments{\item{\code{object}}{[\code{\link{GtkTreeView}}]  A \code{\link{GtkTreeView}}}}
\details{.  }
\value{
A list containing the following elements:
\item{\code{path}}{[\code{\link{GtkTreePath}}]  A pointer to be filled with the current cursor path, or \code{NULL}}
\item{\code{focus.column}}{[\code{\link{GtkTreeViewColumn}}]  A pointer to be filled with the current focus column, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
