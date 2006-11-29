\alias{gtkTreeViewSetSearchPositionFunc}
\name{gtkTreeViewSetSearchPositionFunc}
\title{gtkTreeViewSetSearchPositionFunc}
\description{Sets the function to use when positioning the seach dialog.}
\usage{gtkTreeViewSetSearchPositionFunc(object, func, data)}
\arguments{
\item{\code{object}}{[\code{\link{GtkTreeView}}]  A \code{\link{GtkTreeView}}}
\item{\code{func}}{[\code{\link{GtkTreeViewSearchPositionFunc}}]  the function to use to position the search dialog, or \code{NULL}
   to use the default search position function}
\item{\code{data}}{[R object]  user data to pass to \code{func}, or \code{NULL}}
}
\details{  Since  2.10}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
