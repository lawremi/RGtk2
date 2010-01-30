\alias{gtkTextViewGetLineAtY}
\name{gtkTextViewGetLineAtY}
\title{gtkTextViewGetLineAtY}
\description{Gets the \verb{\link{GtkTextIter}} at the start of the line containing
the coordinate \code{y}. \code{y} is in buffer coordinates, convert from
window coordinates with \code{\link{gtkTextViewWindowToBufferCoords}}.
If non-\code{NULL}, \code{line.top} will be filled with the coordinate of the top
edge of the line.}
\usage{gtkTextViewGetLineAtY(object, y)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkTextView}}]  a \verb{\link{GtkTextView}}}
\item{\verb{y}}{[integer]  a y coordinate}
}
\value{
A list containing the following elements:
\item{\verb{target.iter}}{[\verb{\link{GtkTextIter}}]  a \verb{\link{GtkTextIter}}}
\item{\verb{line.top}}{[integer]  return location for top coordinate of the line}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
