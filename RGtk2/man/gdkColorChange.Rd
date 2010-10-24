\alias{gdkColorChange}
\name{gdkColorChange}
\title{gdkColorChange}
\description{
Changes the value of a color that has already
been allocated. If \code{colormap} is not a private
colormap, then the color must have been allocated
using \code{\link{gdkColormapAllocColors}} with the 
\code{writeable} set to \code{TRUE}.
\strong{WARNING: \code{gdk_color_change} is deprecated and should not be used in newly-written code.}
}
\usage{gdkColorChange(object, color)}
\arguments{
\item{\verb{object}}{a \code{\link{GdkColormap}}.}
\item{\verb{color}}{a \code{\link{GdkColor}}, with the color to change
in the \code{pixel} field,
and the new value in the remaining fields.}
}
\value{[integer] \code{TRUE} if the color was successfully changed.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
