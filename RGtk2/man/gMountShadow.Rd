\alias{gMountShadow}
\name{gMountShadow}
\title{gMountShadow}
\description{Increments the shadow count on \code{mount}. Usually used by
\code{\link{GVolumeMonitor}} implementations when creating a shadow mount for
\code{mount}, see \code{\link{gMountIsShadowed}} for more information. The caller
will need to emit the \verb{"changed"} signal on \code{mount} manually.}
\usage{gMountShadow(object)}
\arguments{\item{\verb{object}}{A \code{\link{GMount}}.}}
\details{Since 2.20}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
