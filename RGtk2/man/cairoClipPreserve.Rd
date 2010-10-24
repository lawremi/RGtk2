\alias{cairoClipPreserve}
\name{cairoClipPreserve}
\title{cairoClipPreserve}
\description{Establishes a new clip region by intersecting the current clip
region with the current path as it would be filled by \code{\link{cairoFill}}
and according to the current fill rule (see \code{\link{cairoSetFillRule}}).}
\usage{cairoClipPreserve(cr)}
\arguments{\item{\verb{cr}}{[\code{\link{Cairo}}]  a cairo context}}
\details{Unlike \code{\link{cairoClip}}, \code{\link{cairoClipPreserve}} preserves the path within
the cairo context.
  
The current clip region affects all drawing operations by
effectively masking out any changes to the surface that are outside
the current clip region.
  
Calling \code{\link{cairoClipPreserve}} can only make the clip region smaller, never
larger. But the current clip is part of the graphics state, so a
temporary restriction of the clip region can be achieved by
calling \code{\link{cairoClipPreserve}} within a \code{\link{cairoSave}}/\code{\link{cairoRestore}}
pair. The only other means of increasing the size of the clip
region is \code{\link{cairoResetClip}}.  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
