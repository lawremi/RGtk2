\alias{gtkTargetsIncludeImage}
\name{gtkTargetsIncludeImage}
\title{gtkTargetsIncludeImage}
\description{Determines if any of the targets in \code{targets} can be used to
provide a \verb{\link{GdkPixbuf}}.}
\usage{gtkTargetsIncludeImage(targets, writable)}
\arguments{
\item{\verb{targets}}{[\verb{\link{GdkAtom}}]  a list of \verb{\link{GdkAtom}}s}
\item{\verb{writable}}{[logical]  whether to accept only targets for which GTK+ knows
  how to convert a pixbuf into the format}
}
\details{  Since  2.10}
\value{[logical] \code{TRUE} if \code{targets} include a suitable target for images,
  otherwise \code{FALSE}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
