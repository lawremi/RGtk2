\alias{gtkImageGet}
\name{gtkImageGet}
\title{gtkImageGet}
\description{
Gets the \code{\link{GtkImage}}.
\strong{WARNING: \code{gtk_image_get} is deprecated and should not be used in newly-written code.  
Gets the \code{\link{GtkImage}}.}
}
\usage{gtkImageGet(object)}
\arguments{\item{\code{object}}{[\code{\link{GtkImage}}] a \code{\link{GtkImage}}}}
\value{
A list containing the following elements:
\item{\code{val}}{[\code{\link{GdkImage}}] return location for a \code{\link{GdkImage}}}
\item{\code{mask}}{[\code{\link{GdkBitmap}}] a \code{\link{GdkBitmap}} that indicates which parts of the image should be transparent.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
