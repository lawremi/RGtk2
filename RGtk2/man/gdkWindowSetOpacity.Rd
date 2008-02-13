\alias{gdkWindowSetOpacity}
\name{gdkWindowSetOpacity}
\title{gdkWindowSetOpacity}
\description{Request the windowing system to make \code{window} partially transparent,
with opacity 0 being fully transparent and 1 fully opaque. (Values
of the opacity parameter are clamped to the [0,1] range.) }
\usage{gdkWindowSetOpacity(object, opacity)}
\arguments{
\item{\code{object}}{[\code{\link{GdkWindow}}]  a top-level \code{\link{GdkWindow}}}
\item{\code{opacity}}{[numeric]  opacity}
}
\details{On X11, this works only on X screens with a compositing manager 
running.
  
For setting up per-pixel alpha, see \code{\link{gdkScreenGetRgbaColormap}}.
For making non-toplevel windows translucent, see 
\code{\link{gdkWindowSetComposited}}.  

  Since  2.12}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
