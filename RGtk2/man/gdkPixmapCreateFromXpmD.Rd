\alias{gdkPixmapCreateFromXpmD}
\name{gdkPixmapCreateFromXpmD}
\title{gdkPixmapCreateFromXpmD}
\description{Create a pixmap from data in XPM format.}
\usage{gdkPixmapCreateFromXpmD(drawable, transparent.color, data)}
\arguments{
\item{\code{drawable}}{[\code{\link{GdkDrawable}}] a \code{\link{GdkDrawable}}, used to determine default values
for the new pixmap.}
\item{\code{transparent.color}}{[\code{\link{GdkColor}}] This color will be used for the pixels
that are transparent in the input file. Can be \code{NULL}
in which case a default color will be used.}
\item{\code{data}}{[character] Pointer to a string containing the XPM data.}
}
\value{
A list containing the following elements:
\item{retval}{[\code{\link{GdkPixmap}}] the \code{\link{GdkPixmap}}}
\item{\code{mask}}{[\code{\link{GdkBitmap}}] Pointer to a place to store a bitmap representing
the transparency mask of the XPM file. Can be \code{NULL},
in which case transparency will be ignored.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
