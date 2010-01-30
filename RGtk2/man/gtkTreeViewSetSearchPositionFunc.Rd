\alias{gtkTreeViewSetSearchPositionFunc}
\name{gtkTreeViewSetSearchPositionFunc}
\title{gtkTreeViewSetSearchPositionFunc}
\description{Sets the function to use when positioning the seach dialog.}
\usage{gtkTreeViewSetSearchPositionFunc(object, func, data)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkTreeView}}]  A \verb{\link{GtkTreeView}}}
\item{\verb{func}}{[\verb{\link{GtkTreeViewSearchPositionFunc}}]  the function to use to position the search dialog, or \code{NULL}
   to use the default search position function}
\item{\verb{data}}{[R object]  user data to pass to \code{func}, or \code{NULL}}
}
\details{  Since  2.10}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
