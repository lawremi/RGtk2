\alias{cairoClosePath}
\name{cairoClosePath}
\title{cairoClosePath}
\description{Adds a line segment to the path from the current point to the
beginning of the current subpath, (the most recent point passed to
\code{\link{cairoMoveTo}}), and closes this subpath.}
\usage{cairoClosePath(cr)}
\arguments{\item{\code{cr}}{[\code{\link{cairo_t}}]  a cairo context}}
\details{The behavior of \code{\link{cairoClosePath}} is distinct from simply calling
\code{\link{cairoLineTo}} with the equivalent coordinate in the case of
stroking. When a closed subpath is stroked, there are no caps on
the ends of the subpath. Instead, their is a line join connecting
the final and initial segments of the subpath.  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
