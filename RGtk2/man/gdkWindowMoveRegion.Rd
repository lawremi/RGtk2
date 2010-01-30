\alias{gdkWindowMoveRegion}
\name{gdkWindowMoveRegion}
\title{gdkWindowMoveRegion}
\description{Move the part of \code{window} indicated by \code{region} by \code{dy} pixels in the Y 
direction and \code{dx} pixels in the X direction. The portions of \code{region} 
that not covered by the new position of \code{region} are invalidated.}
\usage{gdkWindowMoveRegion(object, region, x, y)}
\arguments{
\item{\verb{object}}{[\verb{\link{GdkWindow}}]  a \verb{\link{GdkWindow}}}
\item{\verb{region}}{[\verb{\link{GdkRegion}}]  The \verb{\link{GdkRegion}} to move}
\item{\verb{x}}{[integer]  Amount to move in the X direction}
\item{\verb{y}}{[integer]  Amount to move in the Y direction}
}
\details{Child windows are not moved.  

  Since  2.8}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
