\alias{gtkTreeViewConvertBinWindowToWidgetCoords}
\name{gtkTreeViewConvertBinWindowToWidgetCoords}
\title{gtkTreeViewConvertBinWindowToWidgetCoords}
\description{Converts bin_window coordinates (see \code{\link{gtkTreeViewGetBinWindow}})
to widget relative coordinates.}
\usage{gtkTreeViewConvertBinWindowToWidgetCoords(object, bx, by)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkTreeView}}}
\item{\verb{bx}}{bin_window X coordinate}
\item{\verb{by}}{bin_window Y coordinate}
}
\details{Since 2.12}
\value{
A list containing the following elements:
\item{\verb{wx}}{return location for widget X coordinate}
\item{\verb{wy}}{return location for widget Y coordinate}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
