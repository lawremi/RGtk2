\alias{gtkToolShellGetTextOrientation}
\name{gtkToolShellGetTextOrientation}
\title{gtkToolShellGetTextOrientation}
\description{Retrieves the current text orientation for the tool shell. Tool items must not
call this function directly, but rely on \code{\link{gtkToolItemGetTextOrientation}}
instead.}
\usage{gtkToolShellGetTextOrientation(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkToolShell}}}}
\details{Since 2.14}
\value{[\code{\link{GtkOrientation}}] the current text orientation of \code{shell}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
