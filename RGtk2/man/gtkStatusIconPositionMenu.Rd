\alias{gtkStatusIconPositionMenu}
\name{gtkStatusIconPositionMenu}
\title{gtkStatusIconPositionMenu}
\description{Menu positioning function to use with \code{\link{gtkMenuPopup}}
to position \code{menu} aligned to the status icon \code{user.data}.}
\usage{gtkStatusIconPositionMenu(menu, user.data)}
\arguments{
\item{\code{menu}}{[\code{\link{GtkMenu}}]  the \code{\link{GtkMenu}}}
\item{\code{user.data}}{[R object]  the status icon to position the menu on}
}
\details{  Since  2.10}
\value{
A list containing the following elements:
\item{\code{x}}{[integer]  return location for the x position}
\item{\code{y}}{[integer]  return location for the y position}
\item{\code{push.in}}{[logical]  whether the first menu item should be offset (pushed in) to be
          aligned with the menu popup position (only useful for GtkOptionMenu).}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
