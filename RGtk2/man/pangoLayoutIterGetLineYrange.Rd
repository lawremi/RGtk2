\alias{pangoLayoutIterGetLineYrange}
\name{pangoLayoutIterGetLineYrange}
\title{pangoLayoutIterGetLineYrange}
\description{Divides the vertical space in the \code{\link{PangoLayout}} being iterated over
between the lines in the layout, and returns the space belonging to
the current line.  A line's range includes the line's logical
extents, plus half of the spacing above and below the line, if
\code{\link{pangoLayoutSetSpacing}} has been called to set layout spacing.
The Y positions are in layout coordinates (origin at top left of the
entire layout).}
\usage{pangoLayoutIterGetLineYrange(object)}
\arguments{\item{\verb{object}}{[\code{\link{PangoLayoutIter}}]  a \code{\link{PangoLayoutIter}}}}
\value{
A list containing the following elements:
\item{\verb{y0}}{[integer]  start of line}
\item{\verb{y1}}{[integer]  end of line}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
