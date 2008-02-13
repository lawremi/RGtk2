\alias{gtkTreeViewConvertBinWindowToWidgetCoords}
\name{gtkTreeViewConvertBinWindowToWidgetCoords}
\title{gtkTreeViewConvertBinWindowToWidgetCoords}
\description{Converts bin\_window coordinates (see \code{\link{gtkTreeViewGetBinWindow}})
to widget relative coordinates.}
\usage{gtkTreeViewConvertBinWindowToWidgetCoords(object, bx, by)}
\arguments{
\item{\code{object}}{[\code{\link{GtkTreeView}}]  a \code{\link{GtkTreeView}}}
\item{\code{bx}}{[integer]  bin\_window X coordinate}
\item{\code{by}}{[integer]  bin\_window Y coordinate}
}
\details{  Since  2.12}
\value{
A list containing the following elements:
\item{\code{wx}}{[integer]  return location for widget X coordinate}
\item{\code{wy}}{[integer]  return location for widget Y coordinate}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
