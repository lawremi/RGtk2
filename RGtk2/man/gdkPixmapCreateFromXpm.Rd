\alias{gdkPixmapCreateFromXpm}
\name{gdkPixmapCreateFromXpm}
\title{gdkPixmapCreateFromXpm}
\description{Create a pixmap from a XPM file.}
\usage{gdkPixmapCreateFromXpm(drawable, transparent.color, filename)}
\arguments{
\item{\verb{drawable}}{[\verb{\link{GdkDrawable}}] a \verb{\link{GdkDrawable}}, used to determine default values
for the new pixmap.}
\item{\verb{transparent.color}}{[\verb{\link{GdkColor}}] the color to be used for the pixels
that are transparent in the input file. Can be \code{NULL},
in which case a default color will be used.}
\item{\verb{filename}}{[character] the filename of a file containing XPM data.}
}
\value{
A list containing the following elements:
\item{retval}{[\verb{\link{GdkPixmap}}] the \verb{\link{GdkPixmap}}}
\item{\verb{mask}}{[\verb{\link{GdkBitmap}}] a pointer to a place to store a bitmap representing
the transparency mask of the XPM file. Can be \code{NULL},
in which case transparency will be ignored.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
