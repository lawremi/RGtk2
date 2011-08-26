\alias{gtkTreeModelGetStringFromIter}
\name{gtkTreeModelGetStringFromIter}
\title{gtkTreeModelGetStringFromIter}
\description{Generates a string representation of the iter. This string is a ':'
separated list of numbers. For example, "4:10:0:3" would be an
acceptable return value for this string.}
\usage{gtkTreeModelGetStringFromIter(object, iter)}
\arguments{
\item{\verb{object}}{A \code{\link{GtkTreeModel}}.}
\item{\verb{iter}}{An \code{\link{GtkTreeIter}}.}
}
\details{Since 2.2}
\value{[character] A newly-allocated string.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
