\alias{gtkTextViewGetLineYrange}
\name{gtkTextViewGetLineYrange}
\title{gtkTextViewGetLineYrange}
\description{Gets the y coordinate of the top of the line containing \code{iter},
and the height of the line. The coordinate is a buffer coordinate;
convert to window coordinates with \code{\link{gtkTextViewBufferToWindowCoords}}.}
\usage{gtkTextViewGetLineYrange(object, iter)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkTextView}}]  a \verb{\link{GtkTextView}}}
\item{\verb{iter}}{[\verb{\link{GtkTextIter}}]  a \verb{\link{GtkTextIter}}}
}
\value{
A list containing the following elements:
\item{\verb{y}}{[integer]  return location for a y coordinate}
\item{\verb{height}}{[integer]  return location for a height}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
