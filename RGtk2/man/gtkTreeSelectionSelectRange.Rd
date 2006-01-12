\alias{gtkTreeSelectionSelectRange}
\name{gtkTreeSelectionSelectRange}
\title{gtkTreeSelectionSelectRange}
\description{Selects a range of nodes, determined by \code{start.path} and \code{end.path} inclusive.
\code{selection} must be set to \code{GTK_SELECTION_MULTIPLE} mode.}
\usage{gtkTreeSelectionSelectRange(object, start.path, end.path)}
\arguments{
\item{\code{object}}{[\code{\link{GtkTreeSelection}}]  A \code{\link{GtkTreeSelection}}.}
\item{\code{start.path}}{[\code{\link{GtkTreePath}}]  The initial node of the range.}
\item{\code{end.path}}{[\code{\link{GtkTreePath}}]  The final node of the range.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
