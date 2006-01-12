\alias{pangoRendererDrawTrapezoid}
\name{pangoRendererDrawTrapezoid}
\title{pangoRendererDrawTrapezoid}
\description{Draws a trapezoid with the parallel sides aligned with the X axis
using the given \code{\link{PangoRenderer}}; coordinates are in device space.}
\usage{pangoRendererDrawTrapezoid(object, part, y1., x11, x21, y2, x12, x22)}
\arguments{
\item{\code{object}}{[\code{\link{PangoRenderer}}]  a \code{\link{PangoRenderer}}}
\item{\code{part}}{[\code{\link{PangoRenderPart}}]  type of object this trapezoid is part of}
\item{\code{y1.}}{[numeric]  Y coordinate of top of trapezoid}
\item{\code{x11}}{[numeric]  X coordinate of left end of top of trapezoid}
\item{\code{x21}}{[numeric]  X coordinate of right end of top of trapezoid}
\item{\code{y2}}{[numeric]  X coordinate of top of trapezoid}
\item{\code{x12}}{[numeric]  X coordinate of left end of top of trapezoid}
\item{\code{x22}}{[numeric]  Y coordinate of left end of top of trapezoid}
}
\details{  Since  1.8}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
