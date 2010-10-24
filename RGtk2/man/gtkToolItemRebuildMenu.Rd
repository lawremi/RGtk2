\alias{gtkToolItemRebuildMenu}
\name{gtkToolItemRebuildMenu}
\title{gtkToolItemRebuildMenu}
\description{Calling this function signals to the toolbar that the
overflow menu item for \code{tool.item} has changed. If the
overflow menu is visible when this function it called,
the menu will be rebuilt.}
\usage{gtkToolItemRebuildMenu(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkToolItem}}}}
\details{The function must be called when the tool item changes what it
will do in response to the \verb{"create-menu-proxy"} signal.
  Since 2.6}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
