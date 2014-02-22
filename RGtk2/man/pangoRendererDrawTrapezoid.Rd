\alias{pangoRendererDrawTrapezoid}
\name{pangoRendererDrawTrapezoid}
\title{pangoRendererDrawTrapezoid}
\description{Draws a trapezoid with the parallel sides aligned with the X axis
using the given \code{\link{PangoRenderer}}; coordinates are in device space.}
\usage{pangoRendererDrawTrapezoid(object, part, y1., x11, x21, y2, x12, 
    x22)}
\arguments{
\item{\verb{object}}{[\code{\link{PangoRenderer}}]  a \code{\link{PangoRenderer}}}
\item{\verb{part}}{[\code{\link{PangoRenderPart}}]  type of object this trapezoid is part of}
\item{\verb{y1.}}{[numeric]  Y coordinate of top of trapezoid}
\item{\verb{x11}}{[numeric]  X coordinate of left end of top of trapezoid}
\item{\verb{x21}}{[numeric]  X coordinate of right end of top of trapezoid}
\item{\verb{y2}}{[numeric]  Y coordinate of bottom of trapezoid}
\item{\verb{x12}}{[numeric]  X coordinate of left end of bottom of trapezoid}
\item{\verb{x22}}{[numeric]  X coordinate of right end of bottom of trapezoid}
}
\details{  Since 1.8}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
