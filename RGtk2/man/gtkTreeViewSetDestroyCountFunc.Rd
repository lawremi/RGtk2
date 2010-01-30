\alias{gtkTreeViewSetDestroyCountFunc}
\name{gtkTreeViewSetDestroyCountFunc}
\title{gtkTreeViewSetDestroyCountFunc}
\description{This function should almost never be used.  It is meant for private use by
ATK for determining the number of visible children that are removed when the
user collapses a row, or a row is deleted.}
\usage{gtkTreeViewSetDestroyCountFunc(object, func, data = NULL)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkTreeView}}]  A \verb{\link{GtkTreeView}}}
\item{\verb{func}}{[\verb{\link{GtkTreeDestroyCountFunc}}]  Function to be called when a view row is destroyed, or \code{NULL}}
\item{\verb{data}}{[R object]  User data to be passed to \code{func}, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
