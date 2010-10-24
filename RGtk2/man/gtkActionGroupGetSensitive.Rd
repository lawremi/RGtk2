\alias{gtkActionGroupGetSensitive}
\name{gtkActionGroupGetSensitive}
\title{gtkActionGroupGetSensitive}
\description{Returns \code{TRUE} if the group is sensitive.  The constituent actions
can only be logically sensitive (see \code{\link{gtkActionIsSensitive}}) if
they are sensitive (see \code{\link{gtkActionGetSensitive}}) and their group
is sensitive.}
\usage{gtkActionGroupGetSensitive(object)}
\arguments{\item{\verb{object}}{the action group}}
\details{Since 2.4}
\value{[logical] \code{TRUE} if the group is sensitive.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
