\alias{gtkTextBufferPlaceCursor}
\name{gtkTextBufferPlaceCursor}
\title{gtkTextBufferPlaceCursor}
\description{This function moves the "insert" and "selection\_bound" marks
simultaneously.  If you move them to the same place in two steps
with \code{\link{gtkTextBufferMoveMark}}, you will temporarily select a
region in between their old and new locations, which can be pretty
inefficient since the temporarily-selected region will force stuff
to be recalculated. This function moves them as a unit, which can
be optimized.}
\usage{gtkTextBufferPlaceCursor(object, where)}
\arguments{
\item{\code{object}}{[\code{\link{GtkTextBuffer}}]  a \code{\link{GtkTextBuffer}}}
\item{\code{where}}{[\code{\link{GtkTextIter}}]  where to put the cursor}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
