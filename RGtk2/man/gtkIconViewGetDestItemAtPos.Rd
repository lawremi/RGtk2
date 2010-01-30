\alias{gtkIconViewGetDestItemAtPos}
\name{gtkIconViewGetDestItemAtPos}
\title{gtkIconViewGetDestItemAtPos}
\description{Determines the destination item for a given position.}
\usage{gtkIconViewGetDestItemAtPos(object, drag.x, drag.y)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkIconView}}]  a \verb{\link{GtkIconView}}}
\item{\verb{drag.x}}{[integer]  the position to determine the destination item for}
\item{\verb{drag.y}}{[integer]  the position to determine the destination item for}
}
\details{  Since  2.8}
\value{
A list containing the following elements:
\item{retval}{[logical]  whether there is an item at the given position.}
\item{\verb{path}}{[\verb{\link{GtkTreePath}}]  Return location for the path of the item, or \code{NULL}.}
\item{\verb{pos}}{[\code{\link{GtkIconViewDropPosition}}]  Return location for the drop position, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
