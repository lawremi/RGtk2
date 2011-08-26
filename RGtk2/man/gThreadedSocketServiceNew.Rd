\alias{gThreadedSocketServiceNew}
\name{gThreadedSocketServiceNew}
\title{gThreadedSocketServiceNew}
\description{Creates a new \code{\link{GThreadedSocketService}} with no listeners. Listeners
must be added with \code{gSocketServiceAddListeners()}.}
\usage{gThreadedSocketServiceNew(max.threads)}
\arguments{\item{\verb{max.threads}}{the maximal number of threads to execute concurrently
handling incoming clients, -1 means no limit}}
\details{Since 2.22}
\value{[\code{\link{GSocketService}}] a new \code{\link{GSocketService}}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
