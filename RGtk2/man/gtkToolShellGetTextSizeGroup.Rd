\alias{gtkToolShellGetTextSizeGroup}
\name{gtkToolShellGetTextSizeGroup}
\title{gtkToolShellGetTextSizeGroup}
\description{Retrieves the current text size group for the tool shell. Tool items must not
call this function directly, but rely on \code{\link{gtkToolItemGetTextSizeGroup}}
instead.}
\usage{gtkToolShellGetTextSizeGroup(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkToolShell}}}}
\details{Since 2.14}
\value{[\code{\link{GtkSizeGroup}}] the current text size group of \code{shell}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
