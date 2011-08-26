\alias{gtkLayoutGetSize}
\name{gtkLayoutGetSize}
\title{gtkLayoutGetSize}
\description{Gets the size that has been set on the layout, and that determines
the total extents of the layout's scrollbar area. See
\code{\link{gtkLayoutSetSize}}.}
\usage{gtkLayoutGetSize(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkLayout}}}}
\value{
A list containing the following elements:
\item{\verb{width}}{location to store the width set on \code{layout}, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{height}}{location to store the height set on \code{layout}, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
