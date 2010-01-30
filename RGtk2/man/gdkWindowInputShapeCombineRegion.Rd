\alias{gdkWindowInputShapeCombineRegion}
\name{gdkWindowInputShapeCombineRegion}
\title{gdkWindowInputShapeCombineRegion}
\description{Like \code{\link{gdkWindowShapeCombineRegion}}, but the shape applies
only to event handling. Mouse events which happen while
the pointer position corresponds to an unset bit in the 
mask will be passed on the window below \code{window}.}
\usage{gdkWindowInputShapeCombineRegion(object, shape.region, offset.x, offset.y)}
\arguments{
\item{\verb{object}}{[\verb{\link{GdkWindow}}]  a \verb{\link{GdkWindow}}}
\item{\verb{shape.region}}{[\verb{\link{GdkRegion}}]  region of window to be non-transparent}
\item{\verb{offset.x}}{[integer]  X position of \code{shape.region} in \code{window} coordinates}
\item{\verb{offset.y}}{[integer]  Y position of \code{shape.region} in \code{window} coordinates}
}
\details{An input shape is typically used with RGBA windows.
The alpha channel of the window defines which pixels are 
invisible and allows for nicely antialiased borders,
and the input shape controls where the window is
"clickable".
  
On the X11 platform, this requires version 1.1 of the
shape extension.
  
On the Win32 platform, this functionality is not present and the
function does nothing.  

  Since  2.10}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
