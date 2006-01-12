\alias{gtkTextViewGetLineYrange}
\name{gtkTextViewGetLineYrange}
\title{gtkTextViewGetLineYrange}
\description{Gets the y coordinate of the top of the line containing \code{iter},
and the height of the line. The coordinate is a buffer coordinate;
convert to window coordinates with \code{\link{gtkTextViewBufferToWindowCoords}}.}
\usage{gtkTextViewGetLineYrange(object, iter)}
\arguments{
\item{\code{object}}{[\code{\link{GtkTextView}}]  a \code{\link{GtkTextView}}}
\item{\code{iter}}{[\code{\link{GtkTextIter}}]  a \code{\link{GtkTextIter}}}
}
\value{
A list containing the following elements:
\item{\code{y}}{[integer]  return location for a y coordinate}
\item{\code{height}}{[integer]  return location for a height}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
