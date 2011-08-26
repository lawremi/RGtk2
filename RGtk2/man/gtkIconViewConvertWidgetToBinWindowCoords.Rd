\alias{gtkIconViewConvertWidgetToBinWindowCoords}
\name{gtkIconViewConvertWidgetToBinWindowCoords}
\title{gtkIconViewConvertWidgetToBinWindowCoords}
\description{Converts widget coordinates to coordinates for the bin_window,
as expected by e.g. \code{\link{gtkIconViewGetPathAtPos}}.}
\usage{gtkIconViewConvertWidgetToBinWindowCoords(object, wx, wy)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkIconView}}}
\item{\verb{wx}}{X coordinate relative to the widget}
\item{\verb{wy}}{Y coordinate relative to the widget}
}
\details{Since 2.12}
\value{
A list containing the following elements:
\item{\verb{bx}}{return location for bin_window X coordinate}
\item{\verb{by}}{return location for bin_window Y coordinate}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
