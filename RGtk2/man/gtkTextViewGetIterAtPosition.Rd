\alias{gtkTextViewGetIterAtPosition}
\name{gtkTextViewGetIterAtPosition}
\title{gtkTextViewGetIterAtPosition}
\description{Retrieves the iterator pointing to the character at buffer 
coordinates \code{x} and \code{y}. Buffer coordinates are coordinates for 
the entire buffer, not just the currently-displayed portion.  
If you have coordinates from an event, you have to convert 
those to buffer coordinates with 
\code{\link{gtkTextViewWindowToBufferCoords}}.}
\usage{gtkTextViewGetIterAtPosition(object, x, y)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkTextView}}}
\item{\verb{x}}{x position, in buffer coordinates}
\item{\verb{y}}{y position, in buffer coordinates}
}
\details{Note that this is different from \code{\link{gtkTextViewGetIterAtLocation}},
which returns cursor locations, i.e. positions \emph{between}
characters.
  Since 2.6}
\value{
A list containing the following elements:
\item{\verb{iter}}{a \code{\link{GtkTextIter}}. \emph{[  \acronym{out}  ]}}
\item{\verb{trailing}}{if non-\code{NULL}, location to store an integer indicating where
in the grapheme the user clicked. It will either be
zero, or the number of characters in the grapheme.
0 represents the trailing edge of the grapheme. \emph{[  \acronym{out}  ][  \acronym{allow-none}  ]}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
