\alias{gtkScrolledWindowGetPolicy}
\name{gtkScrolledWindowGetPolicy}
\title{gtkScrolledWindowGetPolicy}
\description{Retrieves the current policy values for the horizontal and vertical
scrollbars. See \code{\link{gtkScrolledWindowSetPolicy}}.}
\usage{gtkScrolledWindowGetPolicy(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkScrolledWindow}}}}
\value{
A list containing the following elements:
\item{\verb{hscrollbar.policy}}{location to store the policy for the horizontal
scrollbar, or \code{NULL}.}
\item{\verb{vscrollbar.policy}}{location to store the policy for the vertical
scrollbar, or \code{NULL}.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
