\alias{gtkTextViewBufferToWindowCoords}
\name{gtkTextViewBufferToWindowCoords}
\title{gtkTextViewBufferToWindowCoords}
\description{Converts coordinate (\code{buffer.x}, \code{buffer.y}) to coordinates for the window
\code{win}, and stores the result in (\code{window.x}, \code{window.y}). }
\usage{gtkTextViewBufferToWindowCoords(object, win, buffer.x, buffer.y)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkTextView}}]  a \verb{\link{GtkTextView}}}
\item{\verb{win}}{[\code{\link{GtkTextWindowType}}]  a \code{\link{GtkTextWindowType}} except \verb{GTK_TEXT_WINDOW_PRIVATE}}
\item{\verb{buffer.x}}{[integer]  buffer x coordinate}
\item{\verb{buffer.y}}{[integer]  buffer y coordinate}
}
\details{Note that you can't convert coordinates for a nonexisting window (see 
\code{\link{gtkTextViewSetBorderWindowSize}}).  }
\value{
A list containing the following elements:
\item{\verb{window.x}}{[integer]  window x coordinate return location}
\item{\verb{window.y}}{[integer]  window y coordinate return location}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
