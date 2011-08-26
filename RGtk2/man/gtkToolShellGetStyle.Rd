\alias{gtkToolShellGetStyle}
\name{gtkToolShellGetStyle}
\title{gtkToolShellGetStyle}
\description{Retrieves whether the tool shell has text, icons, or both. Tool items must
not call this function directly, but rely on \code{gtkToolItemGetStyle()}
instead.}
\usage{gtkToolShellGetStyle(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkToolShell}}}}
\details{Since 2.14}
\value{[\code{\link{GtkToolbarStyle}}] the current style of \code{shell}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
