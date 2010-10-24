\alias{gtkToolShellRebuildMenu}
\name{gtkToolShellRebuildMenu}
\title{gtkToolShellRebuildMenu}
\description{Calling this function signals the tool shell that the overflow menu item for
tool items have changed. If there is an overflow menu and if it is visible
when this function it called, the menu will be rebuilt.}
\usage{gtkToolShellRebuildMenu(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkToolShell}}}}
\details{Tool items must not call this function directly, but rely on
\code{\link{gtkToolItemRebuildMenu}} instead.
  Since 2.14}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
