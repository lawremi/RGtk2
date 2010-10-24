\alias{gtkActionGroupGetVisible}
\name{gtkActionGroupGetVisible}
\title{gtkActionGroupGetVisible}
\description{Returns \code{TRUE} if the group is visible.  The constituent actions
can only be logically visible (see \code{\link{gtkActionIsVisible}}) if
they are visible (see \code{\link{gtkActionGetVisible}}) and their group
is visible.}
\usage{gtkActionGroupGetVisible(object)}
\arguments{\item{\verb{object}}{the action group}}
\details{Since 2.4}
\value{[logical] \code{TRUE} if the group is visible.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
