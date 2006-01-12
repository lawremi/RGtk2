\alias{gtkIconViewPathIsSelected}
\name{gtkIconViewPathIsSelected}
\title{gtkIconViewPathIsSelected}
\description{Returns \code{TRUE} if the icon pointed to by \code{path} is currently
selected. If \code{icon} does not point to a valid location, \code{FALSE} is returned.}
\usage{gtkIconViewPathIsSelected(object, path)}
\arguments{
\item{\code{object}}{[\code{\link{GtkIconView}}]  A \code{\link{GtkIconView}}.}
\item{\code{path}}{[\code{\link{GtkTreePath}}]  A \code{\link{GtkTreePath}} to check selection on.}
}
\details{  Since  2.6}
\value{[logical]  \code{TRUE} if \code{path} is selected.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
