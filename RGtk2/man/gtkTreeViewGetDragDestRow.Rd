\alias{gtkTreeViewGetDragDestRow}
\name{gtkTreeViewGetDragDestRow}
\title{gtkTreeViewGetDragDestRow}
\description{Gets information about the row that is highlighted for feedback.}
\usage{gtkTreeViewGetDragDestRow(object, path)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkTreeView}}}
\item{\verb{path}}{Return location for the path of the highlighted row, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
}
\value{
A list containing the following elements:
\item{\verb{pos}}{Return location for the drop position, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
