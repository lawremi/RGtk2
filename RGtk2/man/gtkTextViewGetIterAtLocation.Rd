\alias{gtkTextViewGetIterAtLocation}
\name{gtkTextViewGetIterAtLocation}
\title{gtkTextViewGetIterAtLocation}
\description{Retrieves the iterator at buffer coordinates \code{x} and \code{y}. Buffer
coordinates are coordinates for the entire buffer, not just the
currently-displayed portion.  If you have coordinates from an
event, you have to convert those to buffer coordinates with
\code{\link{gtkTextViewWindowToBufferCoords}}.}
\usage{gtkTextViewGetIterAtLocation(object, x, y)}
\arguments{
\item{\code{object}}{[\code{\link{GtkTextView}}]  a \code{\link{GtkTextView}}}
\item{\code{x}}{[integer]  x position, in buffer coordinates}
\item{\code{y}}{[integer]  y position, in buffer coordinates}
}
\value{
A list containing the following elements:
\item{\code{iter}}{[\code{\link{GtkTextIter}}]  a \code{\link{GtkTextIter}}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
