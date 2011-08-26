\alias{gdkPixmapCreateFromXpmD}
\name{gdkPixmapCreateFromXpmD}
\title{gdkPixmapCreateFromXpmD}
\description{Create a pixmap from data in XPM format.}
\usage{gdkPixmapCreateFromXpmD(drawable, transparent.color, data)}
\arguments{
\item{\verb{drawable}}{a \code{\link{GdkDrawable}}, used to determine default values
for the new pixmap.}
\item{\verb{transparent.color}}{This color will be used for the pixels
that are transparent in the input file. Can be \code{NULL}
in which case a default color will be used.}
\item{\verb{data}}{Pointer to a string containing the XPM data.}
}
\value{
A list containing the following elements:
\item{retval}{[\code{\link{GdkPixmap}}] the \code{\link{GdkPixmap}}. \emph{[  \acronym{transfer none}  ]}}
\item{\verb{mask}}{Pointer to a place to store a bitmap representing
the transparency mask of the XPM file. Can be \code{NULL},
in which case transparency will be ignored. \emph{[  \acronym{out}  ]}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
