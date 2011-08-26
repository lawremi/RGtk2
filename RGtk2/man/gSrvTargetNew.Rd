\alias{gSrvTargetNew}
\name{gSrvTargetNew}
\title{gSrvTargetNew}
\description{Creates a new \code{\link{GSrvTarget}} with the given parameters.}
\usage{gSrvTargetNew(hostname, port, priority, weight)}
\arguments{
\item{\verb{hostname}}{the host that the service is running on}
\item{\verb{port}}{the port that the service is running on}
\item{\verb{priority}}{the target's priority}
\item{\verb{weight}}{the target's weight}
}
\details{You should not need to use this; normally \code{\link{GSrvTarget}}s are
created by \code{\link{GResolver}}.
  Since 2.22}
\value{[\code{\link{GSrvTarget}}] a new \code{\link{GSrvTarget}}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
