\alias{gtkTreeSelectionPathIsSelected}
\name{gtkTreeSelectionPathIsSelected}
\title{gtkTreeSelectionPathIsSelected}
\description{Returns \code{TRUE} if the row pointed to by \code{path} is currently selected.  If \code{path}
does not point to a valid location, \code{FALSE} is returned}
\usage{gtkTreeSelectionPathIsSelected(object, path)}
\arguments{
\item{\verb{object}}{A \code{\link{GtkTreeSelection}}.}
\item{\verb{path}}{A \code{\link{GtkTreePath}} to check selection on.}
}
\value{[logical] \code{TRUE} if \code{path} is selected.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
