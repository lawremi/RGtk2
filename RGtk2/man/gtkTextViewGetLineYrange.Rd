\alias{gtkTextViewGetLineYrange}
\name{gtkTextViewGetLineYrange}
\title{gtkTextViewGetLineYrange}
\description{Gets the y coordinate of the top of the line containing \code{iter},
and the height of the line. The coordinate is a buffer coordinate;
convert to window coordinates with \code{\link{gtkTextViewBufferToWindowCoords}}.}
\usage{gtkTextViewGetLineYrange(object, iter)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkTextView}}}
\item{\verb{iter}}{a \code{\link{GtkTextIter}}}
}
\value{
A list containing the following elements:
\item{\verb{y}}{return location for a y coordinate. \emph{[  \acronym{out}  ]}}
\item{\verb{height}}{return location for a height. \emph{[  \acronym{out}  ]}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
