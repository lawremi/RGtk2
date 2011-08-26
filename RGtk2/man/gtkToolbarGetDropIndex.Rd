\alias{gtkToolbarGetDropIndex}
\name{gtkToolbarGetDropIndex}
\title{gtkToolbarGetDropIndex}
\description{Returns the position corresponding to the indicated point on
\code{toolbar}. This is useful when dragging items to the toolbar:
this function returns the position a new item should be
inserted.}
\usage{gtkToolbarGetDropIndex(object, x, y)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkToolbar}}}
\item{\verb{x}}{x coordinate of a point on the toolbar}
\item{\verb{y}}{y coordinate of a point on the toolbar}
}
\details{\code{x} and \code{y} are in \code{toolbar} coordinates.
  Since 2.4}
\value{[integer] The position corresponding to the point (\code{x}, \code{y}) on the toolbar.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
