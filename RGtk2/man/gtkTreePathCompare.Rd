\alias{gtkTreePathCompare}
\name{gtkTreePathCompare}
\title{gtkTreePathCompare}
\description{Compares two paths.  If \code{a} appears before \code{b} in a tree, then -1 is returned.
If \code{b} appears before \code{a}, then 1 is returned.  If the two nodes are equal,
then 0 is returned.}
\usage{gtkTreePathCompare(object, b)}
\arguments{
\item{\verb{object}}{A \code{\link{GtkTreePath}}.}
\item{\verb{b}}{A \code{\link{GtkTreePath}} to compare with.}
}
\value{[integer] The relative positions of \code{a} and \code{b}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
