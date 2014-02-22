\alias{gtkTextViewWindowToBufferCoords}
\name{gtkTextViewWindowToBufferCoords}
\title{gtkTextViewWindowToBufferCoords}
\description{Converts coordinates on the window identified by \code{win} to buffer
coordinates, storing the result in (\code{buffer.x},\code{buffer.y}).}
\usage{gtkTextViewWindowToBufferCoords(object, win, window.x, window.y)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkTextView}}}
\item{\verb{win}}{a \code{\link{GtkTextWindowType}} except \verb{GTK_TEXT_WINDOW_PRIVATE}}
\item{\verb{window.x}}{window x coordinate}
\item{\verb{window.y}}{window y coordinate}
}
\details{Note that you can't convert coordinates for a nonexisting window (see 
\code{\link{gtkTextViewSetBorderWindowSize}}).}
\value{
A list containing the following elements:
\item{\verb{buffer.x}}{buffer x coordinate return location or \code{NULL}. \emph{[  \acronym{out}  ][  \acronym{allow-none}  ]}}
\item{\verb{buffer.y}}{buffer y coordinate return location or \code{NULL}. \emph{[  \acronym{out}  ][  \acronym{allow-none}  ]}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
