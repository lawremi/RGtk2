\alias{gtkToolbarGetItemIndex}
\name{gtkToolbarGetItemIndex}
\title{gtkToolbarGetItemIndex}
\description{Returns the position of \code{item} on the toolbar, starting from 0.
It is an error if \code{item} is not a child of the toolbar.}
\usage{gtkToolbarGetItemIndex(object, item)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkToolbar}}}
\item{\verb{item}}{a \code{\link{GtkToolItem}} that is a child of \code{toolbar}}
}
\details{Since 2.4}
\value{[integer] the position of item on the toolbar.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
