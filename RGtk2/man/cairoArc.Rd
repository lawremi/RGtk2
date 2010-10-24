\alias{cairoArc}
\name{cairoArc}
\title{cairoArc}
\description{Adds a circular arc of the given \code{radius} to the current path.  The
arc is centered at (\code{xc}, \code{yc}), begins at \code{angle1} and proceeds in
the direction of increasing angles to end at \code{angle2}. If \code{angle2} is
less than \code{angle1} it will be progressively increased by 2*M_PI
until it is greater than \code{angle1}.}
\usage{cairoArc(cr, xc, yc, radius, angle1, angle2)}
\arguments{
\item{\verb{cr}}{[\code{\link{Cairo}}]  a cairo context}
\item{\verb{xc}}{[numeric]  X position of the center of the arc}
\item{\verb{yc}}{[numeric]  Y position of the center of the arc}
\item{\verb{radius}}{[numeric]  the radius of the arc}
\item{\verb{angle1}}{[numeric]  the start angle, in radians}
\item{\verb{angle2}}{[numeric]  the end angle, in radians}
}
\details{If there is a current point, an initial line segment will be added
to the path to connect the current point to the beginning of the
arc. If this initial line is undesired, it can be avoided by
calling \code{\link{cairoNewSubPath}} before calling \code{\link{cairoArc}}.
  
Angles are measured in radians. An angle of 0.0 is in the direction
of the positive X axis (in user space). An angle of \code{M_PI}/2.0 radians
(90 degrees) is in the direction of the positive Y axis (in
user space). Angles increase in the direction from the positive X
axis toward the positive Y axis. So with the default transformation
matrix, angles increase in a clockwise direction.
  
(To convert from degrees to radians, use \code{degrees * (M_PI /
180.)}.)
  
This function gives the arc in the direction of increasing angles;
see \code{\link{cairoArcNegative}} to get the arc in the direction of
decreasing angles.
  
The arc is circular in user space. To achieve an elliptical arc,
you can scale the current transformation matrix by different
amounts in the X and Y directions. For example, to draw an ellipse
in the box given by \code{x}, \code{y}, \code{width}, \code{height}:
  \preformatted{
cr$save()
cr$translate(x + width / 2, y + height / 2)
cr$scale(width / 2, height / 2)
cr$arc(0, 0, 1, 0, 2 * pi)
cr$restore()
}  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
