\alias{gtkWidgetTranslateCoordinates}
\name{gtkWidgetTranslateCoordinates}
\title{gtkWidgetTranslateCoordinates}
\description{Translate coordinates relative to \code{src.widget}'s allocation to coordinates
relative to \code{dest.widget}'s allocations. In order to perform this
operation, both widgets must be realized, and must share a common
toplevel.}
\usage{gtkWidgetTranslateCoordinates(object, dest.widget, src.x, src.y)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkWidget}}}
\item{\verb{dest.widget}}{a \code{\link{GtkWidget}}}
\item{\verb{src.x}}{X position relative to \code{src.widget}}
\item{\verb{src.y}}{Y position relative to \code{src.widget}}
}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{FALSE} if either widget was not realized, or there
was no common ancestor. In this case, nothing is stored in
*\code{dest.x} and *\code{dest.y}. Otherwise \code{TRUE}.}
\item{\verb{dest.x}}{location to store X position relative to \code{dest.widget}. \emph{[  \acronym{out}  ]}}
\item{\verb{dest.y}}{location to store Y position relative to \code{dest.widget}. \emph{[  \acronym{out}  ]}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
