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
\item{\code{push.in}}{[logical]  return location for whether the menu should be pushed in 
    to be completely inside the screen instead of just clamped to the 
    size to the screen.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
