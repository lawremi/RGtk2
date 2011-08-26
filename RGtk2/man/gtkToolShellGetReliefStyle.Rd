\alias{gtkToolShellGetReliefStyle}
\name{gtkToolShellGetReliefStyle}
\title{gtkToolShellGetReliefStyle}
\description{Returns the relief style of buttons on \code{shell}. Tool items must not call this
function directly, but rely on \code{\link{gtkToolItemGetReliefStyle}} instead.}
\usage{gtkToolShellGetReliefStyle(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkToolShell}}}}
\details{Since 2.14}
\value{[\code{\link{GtkReliefStyle}}] The relief style of buttons on \code{shell}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
