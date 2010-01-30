\alias{gtkTreeSelectionSelectRange}
\name{gtkTreeSelectionSelectRange}
\title{gtkTreeSelectionSelectRange}
\description{Selects a range of nodes, determined by \code{start.path} and \code{end.path} inclusive.
\code{selection} must be set to \verb{GTK_SELECTION_MULTIPLE} mode.}
\usage{gtkTreeSelectionSelectRange(object, start.path, end.path)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkTreeSelection}}]  A \verb{\link{GtkTreeSelection}}.}
\item{\verb{start.path}}{[\verb{\link{GtkTreePath}}]  The initial node of the range.}
\item{\verb{end.path}}{[\verb{\link{GtkTreePath}}]  The final node of the range.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
