\alias{pangoLayoutLineGetXRanges}
\name{pangoLayoutLineGetXRanges}
\title{pangoLayoutLineGetXRanges}
\description{Gets a list of visual ranges corresponding to a given logical range.
This list is not necessarily minimal - there may be consecutive
ranges which are adjacent. The ranges will be sorted from left to
right. The ranges are with respect to the left edge of the entire
layout, not with respect to the line.}
\usage{pangoLayoutLineGetXRanges(object, start.index, end.index)}
\arguments{
\item{\verb{object}}{[\code{\link{PangoLayoutLine}}]         a \code{\link{PangoLayoutLine}}}
\item{\verb{start.index}}{[integer]  Start byte index of the logical range. If this value
              is less than the start index for the line, then
              the first range will extend all the way to the leading
              edge of the layout. Otherwise it will start at the
              leading edge of the first character.}
\item{\verb{end.index}}{[integer]    Ending byte index of the logical range. If this value
              is greater than the end index for the line, then
              the last range will extend all the way to the trailing
              edge of the layout. Otherwise, it will end at the
              trailing edge of the last character.}
}
\value{
A list containing the following elements:
\item{\verb{ranges}}{[integer] out): (array length=n_ranges): (transfer=full. \acronym{out): (array length=n_ranges):} (transfer=full. }
\item{\verb{n.ranges}}{[integer]  The number of ranges stored in \code{ranges}.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
