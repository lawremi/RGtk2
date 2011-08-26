\alias{gdkWindowGetInternalPaintInfo}
\name{gdkWindowGetInternalPaintInfo}
\title{gdkWindowGetInternalPaintInfo}
\description{If you bypass the GDK layer and use windowing system primitives to
draw directly onto a \code{\link{GdkWindow}}, then you need to deal with two
details: there may be an offset between GDK coordinates and windowing
system coordinates, and GDK may have redirected drawing to a offscreen
pixmap as the result of a \code{\link{gdkWindowBeginPaintRegion}} calls.
This function allows retrieving the information you need to compensate
for these effects.}
\usage{gdkWindowGetInternalPaintInfo(object)}
\arguments{\item{\verb{object}}{a \code{\link{GdkWindow}}}}
\details{This function exposes details of the GDK implementation, and is thus
likely to change in future releases of GDK.}
\value{
A list containing the following elements:
\item{\verb{real.drawable}}{location to store the drawable to which drawing should be
done. \emph{[  \acronym{out}  ]}}
\item{\verb{x.offset}}{location to store the X offset between coordinates in \code{window},
and the underlying window system primitive coordinates for
*\code{real.drawable}. \emph{[  \acronym{out}  ]}}
\item{\verb{y.offset}}{location to store the Y offset between coordinates in \code{window},
and the underlying window system primitive coordinates for
*\code{real.drawable}. \emph{[  \acronym{out}  ]}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
