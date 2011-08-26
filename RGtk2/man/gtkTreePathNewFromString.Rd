\alias{gtkTreePathNewFromString}
\name{gtkTreePathNewFromString}
\title{gtkTreePathNewFromString}
\description{Creates a new \code{\link{GtkTreePath}} initialized to \code{path}.  \code{path} is expected to be a
colon separated list of numbers.  For example, the string "10:4:0" would
create a path of depth 3 pointing to the 11th child of the root node, the 5th
child of that 11th child, and the 1st child of that 5th child.  If an invalid
path string is passed in, \code{NULL} is returned.}
\usage{gtkTreePathNewFromString(path)}
\arguments{\item{\verb{path}}{The string representation of a path.}}
\value{[\code{\link{GtkTreePath}}] A newly-created \code{\link{GtkTreePath}}, or \code{NULL}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
