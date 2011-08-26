\alias{gtkTreeViewSetSearchPositionFunc}
\name{gtkTreeViewSetSearchPositionFunc}
\title{gtkTreeViewSetSearchPositionFunc}
\description{Sets the function to use when positioning the search dialog.}
\usage{gtkTreeViewSetSearchPositionFunc(object, func, data)}
\arguments{
\item{\verb{object}}{A \code{\link{GtkTreeView}}}
\item{\verb{func}}{the function to use to position the search dialog, or \code{NULL}
to use the default search position function. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{data}}{user data to pass to \code{func}, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
}
\details{Since 2.10}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
