\alias{gdkGCSetBackground}
\name{gdkGCSetBackground}
\title{gdkGCSetBackground}
\description{Sets the background color for a graphics context.
Note that this function uses \code{color->pixel}, use 
\code{\link{gdkGCSetRgbBgColor}} to specify the background 
color as red, green, blue components.}
\usage{gdkGCSetBackground(object, color)}
\arguments{
\item{\code{object}}{[\code{\link{GdkGC}}]  a \code{\link{GdkGC}}.}
\item{\code{color}}{[\code{\link{GdkColor}}]  the new background color.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
