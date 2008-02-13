\alias{gtkIconViewConvertWidgetToBinWindowCoords}
\name{gtkIconViewConvertWidgetToBinWindowCoords}
\title{gtkIconViewConvertWidgetToBinWindowCoords}
\description{Converts widget coordinates to coordinates for the bin\_window,
as expected by e.g. \code{\link{gtkIconViewGetPathAtPos}}.}
\usage{gtkIconViewConvertWidgetToBinWindowCoords(object, wx, wy)}
\arguments{
\item{\code{object}}{[\code{\link{GtkIconView}}] }
\item{\code{wx}}{[integer]  X coordinate relative to the widget}
\item{\code{wy}}{[integer]  Y coordinate relative to the widget}
}
\details{  Since  2.12}
\value{
A list containing the following elements:
\item{\code{bx}}{[integer]  return location for bin\_window X coordinate}
\item{\code{by}}{[integer]  return location for bin\_window Y coordinate}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
