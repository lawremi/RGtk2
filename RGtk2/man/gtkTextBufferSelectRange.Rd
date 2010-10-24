\alias{gtkTextBufferSelectRange}
\name{gtkTextBufferSelectRange}
\title{gtkTextBufferSelectRange}
\description{This function moves the "insert" and "selection_bound" marks
simultaneously.  If you move them in two steps
with \code{\link{gtkTextBufferMoveMark}}, you will temporarily select a
region in between their old and new locations, which can be pretty
inefficient since the temporarily-selected region will force stuff
to be recalculated. This function moves them as a unit, which can
be optimized.}
\usage{gtkTextBufferSelectRange(object, ins, bound)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkTextBuffer}}}
\item{\verb{ins}}{where to put the "insert" mark}
\item{\verb{bound}}{where to put the "selection_bound" mark}
}
\details{Since 2.4}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
