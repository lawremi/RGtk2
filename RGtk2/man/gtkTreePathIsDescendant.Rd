\alias{gtkTreePathIsDescendant}
\name{gtkTreePathIsDescendant}
\title{gtkTreePathIsDescendant}
\description{Returns \code{TRUE} if \code{path} is a descendant of \code{ancestor}.}
\usage{gtkTreePathIsDescendant(object, ancestor)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkTreePath}}}
\item{\verb{ancestor}}{another \code{\link{GtkTreePath}}}
}
\value{[logical] \code{TRUE} if \code{ancestor} contains \code{path} somewhere below it}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
