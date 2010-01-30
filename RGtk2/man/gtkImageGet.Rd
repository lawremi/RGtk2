\alias{gtkImageGet}
\name{gtkImageGet}
\title{gtkImageGet}
\description{
Gets the \verb{\link{GtkImage}}.
\strong{WARNING: \code{gtk_image_get} is deprecated and should not be used in newly-written code.}
}
\usage{gtkImageGet(object)}
\arguments{\item{\verb{object}}{[\verb{\link{GtkImage}}] a \verb{\link{GtkImage}}}}
\value{
A list containing the following elements:
\item{\verb{val}}{[\verb{\link{GdkImage}}] return location for a \verb{\link{GdkImage}}}
\item{\verb{mask}}{[\verb{\link{GdkBitmap}}] a \verb{\link{GdkBitmap}} that indicates which parts of the image should be transparent.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
