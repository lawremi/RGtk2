\alias{gtkSpinButtonGetIncrements}
\name{gtkSpinButtonGetIncrements}
\title{gtkSpinButtonGetIncrements}
\description{Gets the current step and page the increments used by \code{spin.button}. See
\code{\link{gtkSpinButtonSetIncrements}}.}
\usage{gtkSpinButtonGetIncrements(object)}
\arguments{\item{\verb{object}}{[\verb{\link{GtkSpinButton}}]  a \verb{\link{GtkSpinButton}}}}
\value{
A list containing the following elements:
\item{\verb{step}}{[numeric]  location to store step increment, or \code{NULL}}
\item{\verb{page}}{[numeric]  location to store page increment, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
