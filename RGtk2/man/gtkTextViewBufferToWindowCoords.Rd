\alias{gtkTextViewBufferToWindowCoords}
\name{gtkTextViewBufferToWindowCoords}
\title{gtkTextViewBufferToWindowCoords}
\description{Converts coordinate (\code{buffer.x}, \code{buffer.y}) to coordinates for the window
\code{win}, and stores the result in (\code{window.x}, \code{window.y}). }
\usage{gtkTextViewBufferToWindowCoords(object, win, buffer.x, buffer.y)}
\arguments{
\item{\code{object}}{[\code{\link{GtkTextView}}]  a \code{\link{GtkTextView}}}
\item{\code{win}}{[\code{\link{GtkTextWindowType}}]  a \code{\link{GtkTextWindowType}} except \code{GTK_TEXT_WINDOW_PRIVATE}}
\item{\code{buffer.x}}{[integer]  buffer x coordinate}
\item{\code{buffer.y}}{[integer]  buffer y coordinate}
}
\details{Note that you can't convert coordinates for a nonexisting window (see 
\code{\link{gtkTextViewSetBorderWindowSize}}).  }
\value{
A list containing the following elements:
\item{\code{window.x}}{[integer]  window x coordinate return location}
\item{\code{window.y}}{[integer]  window y coordinate return location}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
