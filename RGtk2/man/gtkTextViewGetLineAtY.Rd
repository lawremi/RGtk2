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
\item{\code{object}}{[\code{\link{GtkTextView}}]  a \code{\link{GtkTextView}}}
\item{\code{y}}{[integer]  a y coordinate}
}
\value{
A list containing the following elements:
\item{\code{target.iter}}{[\code{\link{GtkTextIter}}]  a \code{\link{GtkTextIter}}}
\item{\code{line.top}}{[integer]  return location for top coordinate of the line}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
