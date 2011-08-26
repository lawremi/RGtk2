\alias{gtkToolShellGetEllipsizeMode}
\name{gtkToolShellGetEllipsizeMode}
\title{gtkToolShellGetEllipsizeMode}
\description{Retrieves the current ellipsize mode for the tool shell. Tool items must not
call this function directly, but rely on \code{\link{gtkToolItemGetEllipsizeMode}}
instead.}
\usage{gtkToolShellGetEllipsizeMode(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkToolShell}}}}
\details{Since 2.14}
\value{[\code{\link{PangoEllipsizeMode}}] the current ellipsize mode of \code{shell}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
