\alias{gtkSpinButtonGetRange}
\name{gtkSpinButtonGetRange}
\title{gtkSpinButtonGetRange}
\description{Gets the range allowed for \code{spin.button}. See
\code{\link{gtkSpinButtonSetRange}}.}
\usage{gtkSpinButtonGetRange(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkSpinButton}}}}
\value{
A list containing the following elements:
\item{\verb{min}}{location to store minimum allowed value, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{max}}{location to store maximum allowed value, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
