\alias{gMountUnshadow}
\name{gMountUnshadow}
\title{gMountUnshadow}
\description{Decrements the shadow count on \code{mount}. Usually used by
\code{\link{GVolumeMonitor}} implementations when destroying a shadow mount for
\code{mount}, see \code{\link{gMountIsShadowed}} for more information. The caller
will need to emit the \verb{"changed"} signal on \code{mount} manually.}
\usage{gMountUnshadow(object)}
\arguments{\item{\verb{object}}{A \code{\link{GMount}}.}}
\details{Since 2.20}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
