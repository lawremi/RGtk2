\alias{gtkTreeViewGetBinWindow}
\name{gtkTreeViewGetBinWindow}
\title{gtkTreeViewGetBinWindow}
\description{Returns the window that \code{tree.view} renders to.  This is used primarily to
compare to \code{event->window} to confirm that the event on
\code{tree.view} is on the right window.}
\usage{gtkTreeViewGetBinWindow(object)}
\arguments{\item{\verb{object}}{A \code{\link{GtkTreeView}}}}
\value{[\code{\link{GdkWindow}}] A \code{\link{GdkWindow}}, or \code{NULL} when \code{tree.view} hasn't been realized yet}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
