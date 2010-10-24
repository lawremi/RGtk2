\alias{gtkImageGet}
\name{gtkImageGet}
\title{gtkImageGet}
\description{
Gets the \code{\link{GtkImage}}.
\strong{WARNING: \code{gtk_image_get} has been deprecated since version 2.0 and should not be used in newly-written code. Use \code{\link{gtkImageGetImage}} instead.}
}
\usage{gtkImageGet(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkImage}}}}
\value{
A list containing the following elements:
\item{\verb{val}}{return location for a \code{\link{GdkImage}}}
\item{\verb{mask}}{a \code{\link{GdkBitmap}} that indicates which parts of the image should be transparent.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
