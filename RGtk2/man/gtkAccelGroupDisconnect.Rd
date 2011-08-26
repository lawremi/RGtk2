\alias{gtkAccelGroupDisconnect}
\name{gtkAccelGroupDisconnect}
\title{gtkAccelGroupDisconnect}
\description{Removes an accelerator previously installed through
\code{\link{gtkAccelGroupConnect}}.}
\usage{gtkAccelGroupDisconnect(object, closure)}
\arguments{
\item{\verb{object}}{the accelerator group to remove an accelerator from}
\item{\verb{closure}}{the closure to remove from this accelerator group, or \code{NULL}
to remove all closures. \emph{[  \acronym{allow-none}  ]}}
}
\details{Since 2.20 \code{closure} can be \code{NULL}.}
\value{[logical] \code{TRUE} if the closure was found and got disconnected}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
