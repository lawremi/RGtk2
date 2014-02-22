\alias{gdkWindowShapeCombineMask}
\name{gdkWindowShapeCombineMask}
\title{gdkWindowShapeCombineMask}
\description{Applies a shape mask to \code{window}. Pixels in \code{window} corresponding to
set bits in the \code{mask} will be visible; pixels in \code{window}
corresponding to unset bits in the \code{mask} will be transparent. This
gives a non-rectangular window.}
\usage{gdkWindowShapeCombineMask(object, shape.mask = NULL, offset.x, 
    offset.y)}
\arguments{
\item{\verb{object}}{a \code{\link{GdkWindow}}}
\item{\verb{shape.mask}}{shape mask}
\item{\verb{offset.x}}{X position of shape mask with respect to \code{window}}
\item{\verb{offset.y}}{Y position of shape mask with respect to \code{window}}
}
\details{If \code{mask} is \code{NULL}, the shape mask will be unset, and the \code{x}/\code{y}
parameters are not used.
  
On the X11 platform, this uses an X server extension which is
widely available on most common platforms, but not available on
very old X servers, and occasionally the implementation will be
buggy. On servers without the shape extension, this function
will do nothing.
  
This function works on both toplevel and child windows.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
