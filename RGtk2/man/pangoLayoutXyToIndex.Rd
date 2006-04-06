\alias{pangoLayoutXyToIndex}
\name{pangoLayoutXyToIndex}
\title{pangoLayoutXyToIndex}
\description{Converts from X and Y position within a layout to the byte 
index to the character at that logical position. If the
Y position is not inside the layout, the closest position is chosen
(the position will be clamped inside the layout). If the
X position is not within the layout, then the start or the
end of the line is chosen as  described for \code{pango\Layout\X\To\Index()}.
If either the X or Y positions were not inside the layout, then the
function returns \code{FALSE}; on an exact hit, it returns \code{TRUE}.}
\usage{pangoLayoutXyToIndex(object, x, y)}
\arguments{
\item{\code{object}}{[\code{\link{PangoLayout}}]     a \code{\link{PangoLayout}}}
\item{\code{x}}{[integer]          the X offset (in \code{integer})
            from the left edge of the layout.}
\item{\code{y}}{[integer]          the Y offset (in \code{integer})
            from the top edge of the layout}
}
\value{
A list containing the following elements:
\item{retval}{[logical]  \code{TRUE} if the coordinates were inside text}
\item{\code{index}}{[integer]     location to store calculated byte index}
\item{\code{trailing}}{[integer]   location to store a integer indicating where
            in the grapheme the user clicked. It will either
            be zero, or the number of characters in the
            grapheme. 0 represents the trailing edge of the grapheme.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
