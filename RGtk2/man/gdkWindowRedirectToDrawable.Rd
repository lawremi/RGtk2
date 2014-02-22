\alias{gdkWindowRedirectToDrawable}
\name{gdkWindowRedirectToDrawable}
\title{gdkWindowRedirectToDrawable}
\description{Redirects drawing into \code{window} so that drawing to the
window in the rectangle specified by \code{src.x}, \code{src.y},
\code{width} and \code{height} is also drawn into \code{drawable} at
\code{dest.x}, \code{dest.y}.}
\usage{gdkWindowRedirectToDrawable(object, drawable, src.x, src.y, dest.x, 
    dest.y, width, height)}
\arguments{
\item{\verb{object}}{a \code{\link{GdkWindow}}}
\item{\verb{drawable}}{a \code{\link{GdkDrawable}}}
\item{\verb{src.x}}{x position in \code{window}}
\item{\verb{src.y}}{y position in \code{window}}
\item{\verb{dest.x}}{x position in \code{drawable}}
\item{\verb{dest.y}}{y position in \code{drawable}}
\item{\verb{width}}{width of redirection, or -1 to use the width of \code{window}}
\item{\verb{height}}{height of redirection or -1 to use the height of \code{window}}
}
\details{Only drawing between \code{\link{gdkWindowBeginPaintRegion}} or
\code{\link{gdkWindowBeginPaintRect}} and \code{\link{gdkWindowEndPaint}} is
redirected.
  
Redirection is active until \code{\link{gdkWindowRemoveRedirection}}
is called.
  Since 2.14}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
