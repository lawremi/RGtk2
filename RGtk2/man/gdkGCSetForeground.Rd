\alias{gdkGCSetForeground}
\name{gdkGCSetForeground}
\title{gdkGCSetForeground}
\description{Sets the foreground color for a graphics context.
Note that this function uses \code{color->pixel}, use 
\code{\link{gdkGCSetRgbFgColor}} to specify the foreground 
color as red, green, blue components.}
\usage{gdkGCSetForeground(object, color)}
\arguments{
\item{\verb{object}}{[\verb{\link{GdkGC}}]  a \verb{\link{GdkGC}}.}
\item{\verb{color}}{[\verb{\link{GdkColor}}]  the new foreground color.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
