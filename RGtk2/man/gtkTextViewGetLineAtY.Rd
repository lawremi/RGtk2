\alias{gtkTextViewGetLineAtY}
\name{gtkTextViewGetLineAtY}
\title{gtkTextViewGetLineAtY}
\description{Gets the \code{\link{GtkTextIter}} at the start of the line containing
the coordinate \code{y}. \code{y} is in buffer coordinates, convert from
window coordinates with \code{\link{gtkTextViewWindowToBufferCoords}}.
If non-\code{NULL}, \code{line.top} will be filled with the coordinate of the top
edge of the line.}
\usage{gtkTextViewGetLineAtY(object, y)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkTextView}}}
\item{\verb{y}}{a y coordinate}
}
\value{
A list containing the following elements:
\item{\verb{target.iter}}{a \code{\link{GtkTextIter}}. \emph{[  \acronym{out}  ]}}
\item{\verb{line.top}}{return location for top coordinate of the line. \emph{[  \acronym{out}  ]}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
