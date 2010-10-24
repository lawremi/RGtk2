\alias{cairoResetClip}
\name{cairoResetClip}
\title{cairoResetClip}
\description{Reset the current clip region to its original, unrestricted
state. That is, set the clip region to an infinitely large shape
containing the target surface. Equivalently, if infinity is too
hard to grasp, one can imagine the clip region being reset to the
exact bounds of the target surface.}
\usage{cairoResetClip(cr)}
\arguments{\item{\verb{cr}}{[\code{\link{Cairo}}]  a cairo context}}
\details{Note that code meant to be reusable should not call
\code{\link{cairoResetClip}} as it will cause results unexpected by
higher-level code which calls \code{\link{cairoClip}}. Consider using
\code{\link{cairoSave}} and \code{\link{cairoRestore}} around \code{\link{cairoClip}} as a more
robust means of temporarily restricting the clip region.  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
