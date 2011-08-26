\alias{gdkPixbufFill}
\name{gdkPixbufFill}
\title{gdkPixbufFill}
\description{Clears a pixbuf to the given RGBA value, converting the RGBA value into
the pixbuf's pixel format. The alpha will be ignored if the pixbuf
doesn't have an alpha channel.}
\usage{gdkPixbufFill(object, pixel)}
\arguments{
\item{\verb{object}}{a \code{\link{GdkPixbuf}}}
\item{\verb{pixel}}{RGBA pixel to clear to
(0xffffffff is opaque white, 0x00000000 transparent black)}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
