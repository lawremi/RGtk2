\alias{gtkToolItemGroupSetItemPosition}
\name{gtkToolItemGroupSetItemPosition}
\title{gtkToolItemGroupSetItemPosition}
\description{Sets the position of \code{item} in the list of children of \code{group}.}
\usage{gtkToolItemGroupSetItemPosition(object, item, position)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkToolItemGroup}}}
\item{\verb{item}}{the \code{\link{GtkToolItem}} to move to a new position, should
be a child of \code{group}.}
\item{\verb{position}}{the new position of \code{item} in \code{group}, starting with 0.
The position -1 means end of list.}
}
\details{Since 2.20}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
