\alias{gtkToolShellGetOrientation}
\name{gtkToolShellGetOrientation}
\title{gtkToolShellGetOrientation}
\description{Retrieves the current orientation for the tool shell. Tool items must not
call this function directly, but rely on \code{\link{gtkToolItemGetOrientation}}
instead.}
\usage{gtkToolShellGetOrientation(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkToolShell}}}}
\details{Since 2.14}
\value{[\code{\link{GtkOrientation}}] the current orientation of \code{shell}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
