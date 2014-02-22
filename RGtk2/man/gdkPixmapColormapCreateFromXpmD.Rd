\alias{gdkPixmapColormapCreateFromXpmD}
\name{gdkPixmapColormapCreateFromXpmD}
\title{gdkPixmapColormapCreateFromXpmD}
\description{Create a pixmap from data in XPM format using a particular
colormap.}
\usage{gdkPixmapColormapCreateFromXpmD(drawable, colormap, transparent.color, 
    data)}
\arguments{
\item{\verb{drawable}}{a \code{\link{GdkDrawable}}, used to determine default values
for the new pixmap. Can be \code{NULL} if \code{colormap} is given.}
\item{\verb{colormap}}{the \code{\link{GdkColormap}} that the new pixmap will be use.
If omitted, the colormap for \code{window} will be used.}
\item{\verb{transparent.color}}{the color to be used for the pixels
that are transparent in the input file. Can be \code{NULL},
in which case a default color will be used.}
\item{\verb{data}}{Pointer to a string containing the XPM data.}
}
\value{
A list containing the following elements:
\item{retval}{[\code{\link{GdkPixmap}}] the \code{\link{GdkPixmap}}. \emph{[  \acronym{transfer none}  ]}}
\item{\verb{mask}}{a pointer to a place to store a bitmap representing
the transparency mask of the XPM file. Can be \code{NULL},
in which case transparency will be ignored.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
