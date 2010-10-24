\alias{gtkLinkButtonGetVisited}
\name{gtkLinkButtonGetVisited}
\title{gtkLinkButtonGetVisited}
\description{Retrieves the 'visited' state of the URI where the \code{\link{GtkLinkButton}}
points. The button becomes visited when it is clicked. If the URI
is changed on the button, the 'visited' state is unset again.}
\usage{gtkLinkButtonGetVisited(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkLinkButton}}}}
\details{The state may also be changed using \code{\link{gtkLinkButtonSetVisited}}.
  Since 2.14}
\value{[logical] \code{TRUE} if the link has been visited, \code{FALSE} otherwise}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
