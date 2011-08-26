\alias{gtkToolShellGetIconSize}
\name{gtkToolShellGetIconSize}
\title{gtkToolShellGetIconSize}
\description{Retrieves the icon size for the tool shell. Tool items must not call this
function directly, but rely on \code{\link{gtkToolItemGetIconSize}} instead.}
\usage{gtkToolShellGetIconSize(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkToolShell}}}}
\details{Since 2.14}
\value{[\code{\link{GtkIconSize}}] the current size for icons of \code{shell}. \emph{[  \acronym{type}   int]}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
