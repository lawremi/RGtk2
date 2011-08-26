\alias{gdkWindowInputShapeCombineMask}
\name{gdkWindowInputShapeCombineMask}
\title{gdkWindowInputShapeCombineMask}
\description{Like \code{\link{gdkWindowShapeCombineMask}}, but the shape applies
only to event handling. Mouse events which happen while
the pointer position corresponds to an unset bit in the
mask will be passed on the window below \code{window}.}
\usage{gdkWindowInputShapeCombineMask(object, mask, x, y)}
\arguments{
\item{\verb{object}}{a \code{\link{GdkWindow}}}
\item{\verb{mask}}{shape mask, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{x}}{X position of shape mask with respect to \code{window}}
\item{\verb{y}}{Y position of shape mask with respect to \code{window}}
}
\details{An input shape is typically used with RGBA windows.
The alpha channel of the window defines which pixels are
invisible and allows for nicely antialiased borders,
and the input shape controls where the window is
"clickable".
  
On the X11 platform, this requires version 1.1 of the
shape extension.
  
On the Win32 platform, this functionality is not present and the
function does nothing.
  Since 2.10}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
