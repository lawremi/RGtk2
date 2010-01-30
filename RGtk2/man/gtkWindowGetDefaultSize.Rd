\alias{gtkWindowGetDefaultSize}
\name{gtkWindowGetDefaultSize}
\title{gtkWindowGetDefaultSize}
\description{Gets the default size of the window. A value of -1 for the width or
height indicates that a default size has not been explicitly set
for that dimension, so the "natural" size of the window will be
used.}
\usage{gtkWindowGetDefaultSize(object)}
\arguments{\item{\verb{object}}{[\verb{\link{GtkWindow}}]  a \verb{\link{GtkWindow}}}}
\value{
A list containing the following elements:
\item{\verb{width}}{[integer]  location to store the default width, or \code{NULL}}
\item{\verb{height}}{[integer]  location to store the default height, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
