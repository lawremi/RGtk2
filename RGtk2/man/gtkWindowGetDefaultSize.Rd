\alias{gtkWindowGetDefaultSize}
\name{gtkWindowGetDefaultSize}
\title{gtkWindowGetDefaultSize}
\description{Gets the default size of the window. A value of -1 for the width or
height indicates that a default size has not been explicitly set
for that dimension, so the "natural" size of the window will be
used.}
\usage{gtkWindowGetDefaultSize(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkWindow}}}}
\value{
A list containing the following elements:
\item{\verb{width}}{location to store the default width, or \code{NULL}. \emph{[  \acronym{out}  ][  \acronym{allow-none}  ]}}
\item{\verb{height}}{location to store the default height, or \code{NULL}. \emph{[  \acronym{out}  ][  \acronym{allow-none}  ]}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
