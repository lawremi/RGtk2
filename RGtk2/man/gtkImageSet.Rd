\alias{gtkImageSet}
\name{gtkImageSet}
\title{gtkImageSet}
\description{
Sets the \code{\link{GtkImage}}.
\strong{WARNING: \code{gtk_image_set} has been deprecated since version 2.0 and should not be used in newly-written code. Use \code{\link{gtkImageSetFromImage}} instead.}
}
\usage{gtkImageSet(object, val, mask)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkImage}}}
\item{\verb{val}}{a \code{\link{GdkImage}}}
\item{\verb{mask}}{a \code{\link{GdkBitmap}} that indicates which parts of the image should be transparent.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
