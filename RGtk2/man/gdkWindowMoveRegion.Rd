\alias{gdkWindowMoveRegion}
\name{gdkWindowMoveRegion}
\title{gdkWindowMoveRegion}
\description{Move the part of \code{window} indicated by \code{region} by \code{dy} pixels in the Y 
direction and \code{dx} pixels in the X direction. The portions of \code{region} 
that not covered by the new position of \code{region} are invalidated.}
\usage{gdkWindowMoveRegion(object, region, x, y)}
\arguments{
\item{\verb{object}}{a \code{\link{GdkWindow}}}
\item{\verb{region}}{The \code{\link{GdkRegion}} to move}
\item{\verb{x}}{Amount to move in the X direction}
\item{\verb{y}}{Amount to move in the Y direction}
}
\details{Child windows are not moved.
  Since 2.8}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
