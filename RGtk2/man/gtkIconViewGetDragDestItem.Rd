\alias{gtkIconViewGetDragDestItem}
\name{gtkIconViewGetDragDestItem}
\title{gtkIconViewGetDragDestItem}
\description{Gets information about the item that is highlighted for feedback.}
\usage{gtkIconViewGetDragDestItem(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkIconView}}}}
\details{Since 2.8}
\value{
A list containing the following elements:
\item{\verb{path}}{Return location for the path of the highlighted item, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{pos}}{Return location for the drop position, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
