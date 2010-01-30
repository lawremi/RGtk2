\alias{gtkIconViewPathIsSelected}
\name{gtkIconViewPathIsSelected}
\title{gtkIconViewPathIsSelected}
\description{Returns \code{TRUE} if the icon pointed to by \code{path} is currently
selected. If \code{path} does not point to a valid location, \code{FALSE} is returned.}
\usage{gtkIconViewPathIsSelected(object, path)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkIconView}}]  A \verb{\link{GtkIconView}}.}
\item{\verb{path}}{[\verb{\link{GtkTreePath}}]  A \verb{\link{GtkTreePath}} to check selection on.}
}
\details{  Since  2.6}
\value{[logical] \code{TRUE} if \code{path} is selected.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
