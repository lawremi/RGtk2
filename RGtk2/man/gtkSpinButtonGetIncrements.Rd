\alias{gtkSpinButtonGetIncrements}
\name{gtkSpinButtonGetIncrements}
\title{gtkSpinButtonGetIncrements}
\description{Gets the current step and page the increments used by \code{spin.button}. See
\code{\link{gtkSpinButtonSetIncrements}}.}
\usage{gtkSpinButtonGetIncrements(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkSpinButton}}}}
\value{
A list containing the following elements:
\item{\verb{step}}{location to store step increment, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{page}}{location to store page increment, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
