\alias{cairoClosePath}
\name{cairoClosePath}
\title{cairoClosePath}
\description{Adds a line segment to the path from the current point to the
beginning of the current sub-path, (the most recent point passed to
\code{\link{cairoMoveTo}}), and closes this sub-path. After this call the
current point will be at the joined endpoint of the sub-path.}
\usage{cairoClosePath(cr)}
\arguments{\item{\verb{cr}}{[\code{\link{Cairo}}]  a cairo context}}
\details{The behavior of \code{\link{cairoClosePath}} is distinct from simply calling
\code{\link{cairoLineTo}} with the equivalent coordinate in the case of
stroking. When a closed sub-path is stroked, there are no caps on
the ends of the sub-path. Instead, there is a line join connecting
the final and initial segments of the sub-path.
  
If there is no current point before the call to \code{\link{cairoClosePath}},
this function will have no effect.
  
Note: As of cairo version 1.2.4 any call to \code{\link{cairoClosePath}} will
place an explicit MOVE_TO element into the path immediately after
the CLOSE_PATH element, (which can be seen in \code{\link{cairoCopyPath}} for
example). This can simplify path processing in some cases as it may
not be necessary to save the "last move_to point" during processing
as the MOVE_TO immediately after the CLOSE_PATH will provide that
point.  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
