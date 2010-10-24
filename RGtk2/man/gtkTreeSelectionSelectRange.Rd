\alias{gtkTreeSelectionSelectRange}
\name{gtkTreeSelectionSelectRange}
\title{gtkTreeSelectionSelectRange}
\description{Selects a range of nodes, determined by \code{start.path} and \code{end.path} inclusive.
\code{selection} must be set to \verb{GTK_SELECTION_MULTIPLE} mode.}
\usage{gtkTreeSelectionSelectRange(object, start.path, end.path)}
\arguments{
\item{\verb{object}}{A \code{\link{GtkTreeSelection}}.}
\item{\verb{start.path}}{The initial node of the range.}
\item{\verb{end.path}}{The final node of the range.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
