\alias{gtkTextViewWindowToBufferCoords}
\name{gtkTextViewWindowToBufferCoords}
\title{gtkTextViewWindowToBufferCoords}
\description{Converts coordinates on the window identified by \code{win} to buffer
coordinates, storing the result in (\code{buffer.x},\code{buffer.y}).}
\usage{gtkTextViewWindowToBufferCoords(object, win, window.x, window.y)}
\arguments{
\item{\code{object}}{[\code{\link{GtkTextView}}]  a \code{\link{GtkTextView}}}
\item{\code{win}}{[\code{\link{GtkTextWindowType}}]  a \code{\link{GtkTextWindowType}} except \code{GTK_TEXT_WINDOW_PRIVATE}}
\item{\code{window.x}}{[integer]  window x coordinate}
\item{\code{window.y}}{[integer]  window y coordinate}
}
\details{Note that you can't convert coordinates for a nonexisting window (see 
\code{\link{gtkTextViewSetBorderWindowSize}}).  }
\value{
A list containing the following elements:
\item{\code{buffer.x}}{[integer]  buffer x coordinate return location}
\item{\code{buffer.y}}{[integer]  buffer y coordinate return location}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
