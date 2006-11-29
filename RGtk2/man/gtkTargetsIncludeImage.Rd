\alias{gtkTargetsIncludeImage}
\name{gtkTargetsIncludeImage}
\title{gtkTargetsIncludeImage}
\description{Determines if any of the targets in \code{targets} can be used to
provide a \code{\link{GdkPixbuf}}.}
\usage{gtkTargetsIncludeImage(targets, writable)}
\arguments{
\item{\code{targets}}{[\code{\link{GdkAtom}}]  a list of \code{\link{GdkAtom}}s}
\item{\code{writable}}{[logical]  whether to accept only targets for which GTK+ knows
  how to convert a pixbuf into the format}
}
\details{  Since  2.10}
\value{[logical]  \code{TRUE} if \code{targets} include a suitable target for images,
  otherwise \code{FALSE}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
