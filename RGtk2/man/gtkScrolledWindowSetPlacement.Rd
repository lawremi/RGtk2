\alias{gtkScrolledWindowSetPlacement}
\name{gtkScrolledWindowSetPlacement}
\title{gtkScrolledWindowSetPlacement}
\description{Determines the location of the child widget with respect to the
scrollbars. The default is \code{GTK_CORNER_TOP_LEFT}, meaning the child is
in the top left, with the scrollbars underneath and to the right.
Other values in \code{\link{GtkCornerType}} are \code{GTK_CORNER_TOP_RIGHT},
\code{GTK_CORNER_BOTTOM_LEFT}, and \code{GTK_CORNER_BOTTOM_RIGHT}.}
\usage{gtkScrolledWindowSetPlacement(object, window.placement)}
\arguments{
\item{\code{object}}{[\code{\link{GtkScrolledWindow}}] A \code{\link{GtkScrolledWindow}}.}
\item{\code{window.placement}}{[\code{\link{GtkCornerType}}] Position of the child window.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
