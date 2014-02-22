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
\item{\verb{object}}{a \code{\link{GtkTextView}}}
\item{\verb{x}}{x position, in buffer coordinates}
\item{\verb{y}}{y position, in buffer coordinates}
}
\value{
A list containing the following elements:
\item{\verb{iter}}{a \code{\link{GtkTextIter}}. \emph{[  \acronym{out}  ]}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
