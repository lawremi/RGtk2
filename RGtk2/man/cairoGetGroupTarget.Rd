\alias{cairoGetGroupTarget}
\name{cairoGetGroupTarget}
\title{cairoGetGroupTarget}
\description{Gets the target surface for the current group as started by the
most recent call to \code{\link{cairoPushGroup}} or
\code{\link{cairoPushGroupWithContent}}.}
\usage{cairoGetGroupTarget(cr)}
\arguments{\item{\code{cr}}{[\code{\link{Cairo}}]  a cairo context}}
\details{This function will return NULL if called "outside" of any group
rendering blocks, (that is, after the last balancing call to
\code{\link{cairoPopGroup}} or \code{\link{cairoPopGroupToSource}}).  

  Since  1.2}
\value{[\code{\link{CairoSurface}}]  the target group surface, or NULL if none. To keep a reference to it, you must call
\code{\link{cairoSurfaceReference}}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
